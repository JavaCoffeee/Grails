package liberarymanagement

import grails.plugin.springsecurity.annotation.Secured;

class ScreenController {

    def publicPage(){
		render "This is public page"
	}
	
	@Secured(['IS_AUTHENTICATED_FULLY'])
	def authenticatedPage(){
		render "This is authenticated page"
	}
	
	@Secured(['ROLE_ADMIN'])
	def adminPage(){
		render "This is admin page"
	}
	
	@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
	def dealerSuccessfullyRegistered(){
		[title:"Readersadda"]
	}
}
