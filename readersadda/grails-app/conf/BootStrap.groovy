import com.readersadda.www.Role
import com.readersadda.www.User
import com.readersadda.www.UserRole;


class BootStrap {

	def init = {
		servletContext ->
		println "inside bootstrap"
		/*User admin = User.findByUsername('admin')?:new User(username:'admin',password:'admin',enabled:true)
		 User jagir = User.findByUsername('jagir')?:new User(username:'jagir',password:'jagir',enabled:true)
		 User crossworld = User.findByUsername('crossworld')?:new User(username:'crossworld',password:'crossworld',enabled:true)*/
		User admin = User.findByUsername('admin')?:new User(username:'admin',password:'admin',enabled:true,firstname:'admin',lastname:'admin',email:'admin@readersadda.com',accountExpired:false,accountLocked:false,passwordExpired:false).save(flush : true,failOnError:true)
		User jagir = User.findByUsername('jagir')?:new User(username:'jagir',password:'jagir',enabled:true,firstname:'jagir',lastname:'buch',email:'jagir@readersadda.com',accountExpired:false,accountLocked:false,passwordExpired:false).save(flush : true)
		User crossworld = User.findByUsername('crossworld')?:new User(username:'crossworld',password:'crossworld',enabled:true,firstname:'seller',lastname:'seller',email:'seller@readersadda.com',accountExpired:false,accountLocked:false,passwordExpired:false).save(flush : true)
		println admin
		println jagir
		
		Role adminRole = Role.findByAuthority('ROLE_ADMIN')?:new Role(authority : 'ROLE_ADMIN').save(flush:true)
		Role userRole = Role.findByAuthority('ROLE_USER')?:new Role(authority: 'ROLE_USER').save(flush:true)
		Role dealerRole = Role.findByAuthority('ROLE_DEALER')?:new Role(authority : 'ROLE_DEALER').save(flush:true)
		
		UserRole.create(admin,adminRole)
		UserRole.create(jagir,userRole)
		UserRole.create(crossworld,dealerRole)

	}
	def destroy = {
	}
}
