package com.readersadda.www

class Category {
	String category
	static hasMany = [books : Book]
    static constraints = {
    }
}
