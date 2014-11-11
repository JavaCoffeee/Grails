package imgdemo

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import java.awt.Graphics
import java.awt.Image
import java.awt.image.BufferedImage

import org.apache.commons.fileupload.FileItem;
import org.imgscalr.Scalr;
import org.imgscalr.Scalr.Method;
import org.imgscalr.Scalr.Mode;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.imageio.ImageIO;

@Transactional(readOnly = true)
class FileController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond File.list(params), model:[fileInstanceCount: File.count()]
	}

	def show(File fileInstance) {
		//response.outputStream << fileInstance.filePayload
		//response.outputStream.flush()
		respond fileInstance
	}

	def showImg(File fileInstance){
		response.outputStream << fileInstance.filePayload
		response.outputStream.flush()
	}
	
	def loadImg(File fileInstance){
		String path = fileInstance.path
		java.io.File inputFile = new java.io.File(path)
		println "path : "+path
		response.outputStream << inputFile.getBytes()
		response.outputStream.flush()
		
	}

	def create() {
		respond new File(params)
	}

	@Transactional
	def save(File fileInstance) {
		if (fileInstance == null) {
			notFound()
			return
		}

		if (fileInstance.hasErrors()) {
			respond fileInstance.errors, view:'create'
			return
		}

		def uploadedFile = request.getFile("filePayload")
		def img = getThumbnail(uploadedFile);
		/*fileInstance.filePayload = uploadedFile.getBytes()
		 fileInstance.fileType = uploadedFile.contentType
		 fileInstance.fileName = uploadedFile.originalFilename*/
		fileInstance.filePayload = img.getBytes()
		fileInstance.fileType = uploadedFile.contentType
		fileInstance.fileName = uploadedFile.originalFilename
		fileInstance.path = img.getPath()
		
		println "File Path 2 : "+img.getPath()


		fileInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'file.label', default: 'File'),
					fileInstance.id
				])
				redirect fileInstance
			}
			'*' { respond fileInstance, [status: CREATED] }
		}
	}

	def edit(File fileInstance) {
		respond fileInstance
	}

	@Transactional
	def update(File fileInstance) {
		if (fileInstance == null) {
			notFound()
			return
		}

		if (fileInstance.hasErrors()) {
			respond fileInstance.errors, view:'edit'
			return
		}

		fileInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'File.label', default: 'File'),
					fileInstance.id
				])
				redirect fileInstance
			}
			'*'{ respond fileInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(File fileInstance) {

		if (fileInstance == null) {
			notFound()
			return
		}

		fileInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'File.label', default: 'File'),
					fileInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'file.label', default: 'File'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}

	def getThumbnail(def uploadedImg){
		long startTime = System.currentTimeMillis();
		//java.io.File f = new java.io.File("/home/jagir/Pictures/meluha.jpg");
		def fi = convertToFile(uploadedImg)
		BufferedImage img = ImageIO.read(fi); // load image


		//Quality indicate that the scaling implementation should do everything
		// create as nice of a result as possible , other options like speed
		// will return result as fast as possible
		//Automatic mode will calculate the resultant dimensions according
		//to image orientation .so resultant image may be size of 50*36.if you want
		//fixed size like 50*50 then use FIT_EXACT
		//other modes like FIT_TO_WIDTH..etc also available.

		BufferedImage thumbImg = Scalr.resize(img, Method.QUALITY,Mode.AUTOMATIC, 50,50, Scalr.OP_ANTIALIAS);
		
		//convert bufferedImage to outpurstream
		ByteArrayOutputStream os = new ByteArrayOutputStream();
		ImageIO.write(thumbImg,"jpg",os);
		//or wrtite to a file
		def f2 = new java.io.File("/home/jagir/asdfg/${fi.getName()}");

		ImageIO.write(thumbImg, "jpg", f2);

		System.out.println("time is : " +(System.currentTimeMillis()-startTime));

		return (f2);

	}

	def convertToFile(CommonsMultipartFile multipartFile){
		def webRootDir = servletContext.getRealPath("/")
		def userDir = new java.io.File(webRootDir, "/home/jagir/t")
		String path = "/home/jagir/asdfg"
		java.io.File pathAsFile = new java.io.File(path)
		pathAsFile.mkdirs()
		
		if (pathAsFile.exists()){
			println("CREATED REPORT DIRECTORY @ ${pathAsFile.absolutePath}");
		 }else{
			println("FAILED TO CREATE REPORT DIRECTORY @ ${pathAsFile.absolutePath}");
		 }
		
		java.io.File myFile = new java.io.File(pathAsFile,multipartFile.originalFilename)
		multipartFile.transferTo(myFile)
		return myFile
	}
}