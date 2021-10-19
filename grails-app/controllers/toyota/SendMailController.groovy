package toyota

class SendMailController {

    def mailService

    def index() { }

    def sendMail() {
        mailService.sendMail {
            to "ejemplo@correo.com"
            from "ejemplo@correo.com"
            subject "Alerta de Insumos"
            text params.estadoStock
        }
        redirect(controller:"entrega", action:"entregas", params:[entrega:'exitoEntrega'])
    }
}
