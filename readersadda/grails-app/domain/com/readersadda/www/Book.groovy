package com.readersadda.www

class Book {
	String title
	String isbn
	String about
	String price
	//byte[] img
	String imgPath
	
	static belongsTo = [author : Author , publisher : Publisher]
	
		
    static constraints = {
		imgPath(blank : true , nullable:true)
    }
}
