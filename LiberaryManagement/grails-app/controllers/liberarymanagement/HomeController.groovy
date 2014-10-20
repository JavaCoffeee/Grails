package liberarymanagement

import grails.plugin.springsecurity.annotation.Secured;

class HomeController {
	def springSecurityService
	@Secured(['ROLE_ADMIN','ROLE_USER'])
	def index() { 
		String view = ''
		def auth = springSecurityService.authentication
		def authorities = auth.authorities
		for(def role in authorities){
			if(role.authority == 'ROLE_ADMIN'){
				view = 'admin'
			}
			if(role.authority == 'ROLE_USER'){
				view = 'user'
			}
		}
		render view : view
	}
	@Secured(['ROLE_ADMIN'])
	def admin(){
		println 'admin'
	}
	@Secured(['ROLE_USER'])
	def user(){
		println 'user'
	}
}
