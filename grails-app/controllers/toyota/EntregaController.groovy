package toyota

class EntregaController {
    def entregaService

    def index() { }

    def entregas() {
        [listaEntrega: entregaService.listarEntregas()]
    }

    def entregaToner() {
        /* tonerService.modificarToner(new Long(params.id))*/
        render(view:"entregaToner", model: [toner: entregaService.mostrarToner(new Long(params.id))])
    }


    def finalizarEntrega() {
        def estado = entregaService.crearEntrega(params)
        if(estado == 'errorEntrega'){
            redirect(controller:"entrega", action:"entregas", params: [entrega:'errorEntrega'])
        } else if(estado == 'exitoEntrega') {
            redirect(controller:"entrega", action:"entregas", params: [entrega:'exitoEntrega'])
        } else {
            redirect(controller:"sendMail", action:"sendMail", params: [estadoStock: estado])
        }
        
    }
}
