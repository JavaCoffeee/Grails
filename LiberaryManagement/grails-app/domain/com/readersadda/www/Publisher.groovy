package com.readersadda.www

class Publisher {
	
	String name
	Date publishDate
	String about
	
	static hasMany = [books : Book]

    static constraints = {
    }
}