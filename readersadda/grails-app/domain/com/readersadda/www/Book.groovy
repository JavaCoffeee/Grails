package com.readersadda.www

class Book {
	String title
	String isbn10
	String isbn13
	String about
	String price
	//byte[] img
	String imgPath
	long userId
	String language
	String totalPage
	
	static belongsTo = [author : Author , publisher : Publisher,category : Category]
		
    static constraints = {
		imgPath(blank : true , nullable:true)
    }
}
