package com.readersadda.www

class Author {
	String name
	String contact
	String email
	String about
	String address
	
	static hasMany = [books : Book]
	
    static constraints = {
    }
}
