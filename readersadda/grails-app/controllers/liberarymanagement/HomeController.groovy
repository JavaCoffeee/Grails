package liberarymanagement

import grails.plugin.springsecurity.annotation.Secured;
import com.readersadda.www.Book;

class HomeController {
	def springSecurityService
	
	/*@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
	def index(){
		render view : 'homescreen'
	}*/
	
	@Secured(['ROLE_ADMIN','ROLE_USER','ROLE_DEALER'])
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
			if(role.authority == 'ROLE_DEALER'){
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
	
	@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
	def homescreen(){
		def bookList = []
		bookList = Book.list()
		[bookList : bookList]
	}	
}
