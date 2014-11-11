package imgdemo

class File {
	byte[] filePayload
	String fileType
	String fileName
	String path
	
    static constraints = {
		filePayload(nullable:true)
		fileType(blank:true , nullable:true)
		fileName(blank:true , nullable:true) 
    }
}