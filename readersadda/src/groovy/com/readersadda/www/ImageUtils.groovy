package com.readersadda.www
import java.awt.image.BufferedImage;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.imgscalr.Scalr.Method;
import org.imgscalr.Scalr.Mode;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


class ImageUtils {
	
	public static def toThumbnail(CommonsMultipartFile uploadedFile){
		long startTime = System.currentTimeMillis();
		def file = convertToFile(uploadedFile)
		BufferedImage originalImage = ImageIO.read(file)
		//BufferedImage thumbnail = Scalr.resize(originalImage, Method.QUALITY,Mode.AUTOMATIC, 50,50, Scalr.OP_ANTIALIAS);
		def outputFile = new File("grails-app/assets/images/thumbnail/${file.getName()}");
		ImageIO.write(originalImage, "jpg", outputFile);
		return outputFile
	}
	
	public static def convertToFile(CommonsMultipartFile uploadedFile){
		String FILE_PATH = "grails-app/assets/images/thumbnail"
		File userDir = new File(FILE_PATH);
		userDir.mkdirs()
		if(!userDir.exists()){
			println "Failed to create Directory"
		}	
		File file = new File(userDir,uploadedFile.originalFilename)
		uploadedFile.transferTo(file)
		return file;
	}
}
