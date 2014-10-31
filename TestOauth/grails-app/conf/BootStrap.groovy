import com.example.User;
import com.example.Role;
import com.example.UserRole;

class BootStrap {

    def init = { servletContext ->
		User admin = new User(username:'admin',password:'admin',enabled : true).save(flush : true)
		User zaptech = new User(username : 'zaptech',password:'zaptech',enabled : true).save(flush : true)
		
		Role adminRole = new Role(authority:'ROLE_ADMIN').save(flush : true)
		Role userRole = new Role(authority:'ROLE_USER').save(flush:true)
		
		UserRole.create(admin,adminRole)
		UserRole.create(zaptech,userRole)
		
		new Role(authority:'ROLE_FACEBOOK').save(flush:true)
    }
    def destroy = {
    }
}
