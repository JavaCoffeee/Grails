package com.readersadda.www



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FacebookUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FacebookUser.list(params), model:[facebookUserInstanceCount: FacebookUser.count()]
    }

    def show(FacebookUser facebookUserInstance) {
        respond facebookUserInstance
    }

    def create() {
        respond new FacebookUser(params)
    }

    @Transactional
    def save(FacebookUser facebookUserInstance) {
        if (facebookUserInstance == null) {
            notFound()
            return
        }

        if (facebookUserInstance.hasErrors()) {
            respond facebookUserInstance.errors, view:'create'
            return
        }

        facebookUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'facebookUser.label', default: 'FacebookUser'), facebookUserInstance.id])
                redirect facebookUserInstance
            }
            '*' { respond facebookUserInstance, [status: CREATED] }
        }
    }

    def edit(FacebookUser facebookUserInstance) {
        respond facebookUserInstance
    }

    @Transactional
    def update(FacebookUser facebookUserInstance) {
        if (facebookUserInstance == null) {
            notFound()
            return
        }

        if (facebookUserInstance.hasErrors()) {
            respond facebookUserInstance.errors, view:'edit'
            return
        }

        facebookUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FacebookUser.label', default: 'FacebookUser'), facebookUserInstance.id])
                redirect facebookUserInstance
            }
            '*'{ respond facebookUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FacebookUser facebookUserInstance) {

        if (facebookUserInstance == null) {
            notFound()
            return
        }

        facebookUserInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FacebookUser.label', default: 'FacebookUser'), facebookUserInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'facebookUser.label', default: 'FacebookUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
