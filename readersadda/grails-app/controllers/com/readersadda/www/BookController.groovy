package com.readersadda.www

import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BookController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]
	
	def springSecurityService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Book.list(params), model:[bookInstanceCount: Book.count()]
    }

    def show(Book bookInstance) {
        respond bookInstance
    }	
	
	def loadImg(Book bookInstance){
		String path = bookInstance.imgPath
		File inputFile = new File(path)
		response.outputStream << inputFile.getBytes()
		response.outputStream.flush()
	}
	
	def create() {
        respond new Book(params)
    }
	
	def create_temp() {
		respond new Book(params)
	}

    @Transactional
    def save(Book bookInstance) {
        if (bookInstance == null) {
            notFound()
            return
        }

        if (bookInstance.hasErrors()) {
            respond bookInstance.errors, view:'create'
            return
        }
		
		def thumbnail = ImageUtils.toThumbnail(request.getFile("img"))
		
		/*bookInstance.img = thumbnail.getBytes()
		bookInstance.*/
		bookInstance.imgPath = thumbnail.getPath()
		
		def principal = springSecurityService.principal
		
		bookInstance.userId = principal.id

        bookInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'book.label', default: 'Book'), bookInstance.id])
                redirect bookInstance
            }
            '*' { respond bookInstance, [status: CREATED] }
        }
    }

    def edit(Book bookInstance) {
        respond bookInstance
    }

    @Transactional
    def update(Book bookInstance) {
        if (bookInstance == null) {
            notFound()
            return
        }

        if (bookInstance.hasErrors()) {
            respond bookInstance.errors, view:'edit'
            return
        }

        bookInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Book.label', default: 'Book'), bookInstance.id])
                redirect bookInstance
            }
            '*'{ respond bookInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Book bookInstance) {

        if (bookInstance == null) {
            notFound()
            return
        }

        bookInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Book.label', default: 'Book'), bookInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'book.label', default: 'Book'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def open(Book bookInstance){
		render view : "open" , model : [bookInstance : bookInstance]
	}
	
	def testpage(){
		
	}
	
	def listbook(){
		def principal = springSecurityService.principal
		def bookList = []
		def books=[]
		Long userId = principal.id
		
		bookList = Book.list()
		for(Book book : bookList){
			if(book.userId==userId){
				books.add(book)
			}
		}
		[bookInstanceList : books,bookInstanceCount : books.size]
	}
}
