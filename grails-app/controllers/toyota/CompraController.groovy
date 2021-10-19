package toyota

class CompraController {
    def compraService

    def index() { }

    def compras() {
        [listaCompra: compraService.listarCompra()]
    }

    def compraToner() {
        /* tonerService.modificarToner(new Long(params.id))*/
        render(view:"compraToner", model: [toner: compraService.mostrarToner(new Long(params.id))])
    }

    def finalizarCompra() {
        def respuesta = compraService.crearCompra(params)
        if(respuesta == 'compraExito') {
            redirect(action:"compras", params:[compra:'compraExito'])
        }
        if(respuesta == 'compraError') {
            redirect(action:"compras", params:[compra:'compraError'])
        }
    }
}
