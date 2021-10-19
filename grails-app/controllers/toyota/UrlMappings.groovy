package toyota

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/impresora/impresoras", controller:"impresora", action:"impresoras")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
