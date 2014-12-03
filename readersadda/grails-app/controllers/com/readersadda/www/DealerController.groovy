package com.readersadda.www



import static org.springframework.http.HttpStatus.*

import com.sun.org.apache.xml.internal.serializer.utils.MsgKey;

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DealerController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	@Secured([
		'IS_AUTHENTICATED_ANONYMOUSLY'
	])
	def home(){
	}

	@Secured([
		'IS_AUTHENTICATED_ANONYMOUSLY'
	])
	def verifyEmail(){
		def email =  params.value
		def status = User.findByUsername(email);
		render status.encodeAsJSON()
	}

	@Secured([
		'IS_AUTHENTICATED_ANONYMOUSLY'
	])
	def redirectToDealerRegistration(){
		String redirectString =  params.tmp

		if(redirectString.equals("newuser")){
			redirect controller:'user' , action:'signUp' , params : [userstatus : "newdealer"]
		}else{
			flash.uname = params.email
			def model = [email:params.email,password:params.password]
			chain controller:'user' , action:'updateuserrole' , params : model
		}
	}

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Dealer.list(params), model:[dealerInstanceCount: Dealer.count()]
	}

	def show(Dealer dealerInstance) {
		respond dealerInstance
	}

	def create() {
		respond new Dealer(params)
	}

	@Transactional
	def save(Dealer dealerInstance) {
		if (dealerInstance == null) {
			notFound()
			return
		}

		if (dealerInstance.hasErrors()) {
			respond dealerInstance.errors, view:'create'
			return
		}

		dealerInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'dealer.label', default: 'Dealer'),
					dealerInstance.id
				])
				redirect dealerInstance
			}
			'*' { respond dealerInstance, [status: CREATED] }
		}
	}

	def edit(Dealer dealerInstance) {
		respond dealerInstance
	}

	@Transactional
	def update(Dealer dealerInstance) {
		if (dealerInstance == null) {
			notFound()
			return
		}

		if (dealerInstance.hasErrors()) {
			respond dealerInstance.errors, view:'edit'
			return
		}

		dealerInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Dealer.label', default: 'Dealer'),
					dealerInstance.id
				])
				redirect dealerInstance
			}
			'*'{ respond dealerInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Dealer dealerInstance) {

		if (dealerInstance == null) {
			notFound()
			return
		}

		dealerInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Dealer.label', default: 'Dealer'),
					dealerInstance.id
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
					message(code: 'dealer.label', default: 'Dealer'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
