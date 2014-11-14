package liberarymanagement

import grails.plugin.springsecurity.annotation.Secured;
import com.readersadda.www.Book;

class HomeController {
	def springSecurityService
	@Secured(['ROLE_ADMIN','ROLE_USER'])
	def index() { 
		String view = ''
		String username = ''
		def bookList = []
		def auth = springSecurityService.authentication
		def authorities = auth.authorities
		for(def role in authorities){
			if(role.authority == 'ROLE_ADMIN'){
				view = 'admin'
			}
			if(role.authority == 'ROLE_USER'){
				bookList = Book.list()
				username = springSecurityService.currentUser.username
				
				view = 'user'
			}
		}
		render view : view , model : [bookList : bookList,username : username]
	}
	
	@Secured(['ROLE_ADMIN'])
	def admin(){
	}
	
	@Secured(['ROLE_USER'])
	def user(){
	}
	
}
