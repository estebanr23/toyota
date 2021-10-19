package toyota

class BootStrap {

    def init = { servletContext ->
        // Usuarios y Roles
        def usuario = new User(username: 'admin', password: 'admin').save(flush:true)
        def rol = new Role(authority: 'ROLE_ADMIN').save(flush:true)
        UserRole.create usuario, rol
    }
    def destroy = {
    }
}
