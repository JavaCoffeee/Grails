package com.readersadda.www

class FacebookUser {

	long uid
	String accessToken
	Date accessTokenExpires

	//static belongsTo = [user: User]

	static constraints = { uid unique: true }
}
