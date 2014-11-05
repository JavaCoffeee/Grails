package com.readersadda.www

class Book {
	String title
	String isbn
	String about
	String price
	byte[] img
	
	static belongsTo = [author : Author , publisher : Publisher]
	
		
    static constraints = {
    }
}
