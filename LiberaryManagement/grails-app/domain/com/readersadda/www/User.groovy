package com.readersadda.www

class User {

	transient springSecurityService

	String username
	String password
	String firstname
	String lastname
	String email
	String confirmPassword
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService' , 'confirmPassword']

	static constraints = {
		/*username blank: false, unique: true
		password blank: false,validator : {password , obj ->
			def cPassword = obj.confirmPassword
			password == cPassword ? true : ['invalid.matchingpasswords']
			
		}
		confirmPassword bindable : true
		firstname blank: false,nullable: false
		lastname blank: true,nullable: true
		email blank: false, nullable: false, unique: true, email: true*/
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
