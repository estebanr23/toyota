package toyota

class ImpresoraController {
    def impresoraService

    def index() { }

    def impresoras() {
        [listaImpresora: impresoraService.listarImpresoras()]
    }

    def formImpresora() {
        render(view: "altaImpresora")
    }
    
    def altaImpresora() {
        
        def validar = impresoraService.agregarImpresora(params)
        if(validar == 'altaExito') {
            redirect(action:"impresoras", params:[impresora: "altaExito"]) 
        }
        if(validar == 'errorAlta') {
            redirect(action:"formImpresora", params:[impresora: "errorAlta"]) 
        }   
    }

    def bajaImpresora() {
        def respuesta = impresoraService.eliminarImpresora(new Long (params.id))
        if(respuesta == 'errorEliminar') {
            redirect(action:"impresoras", params:[impresora: "errorEliminar"]) 
        }
        if(respuesta == 'eliminarExito') {
            redirect(action:"impresoras", params:[impresora: "eliminarExito"])
        }
    }
    
    def modImpresora() {
        render(view:"modImpresora", model: [impresoraDatos: impresoraService.datosImpresora(new Long (params.id))])
    }

    def actualizarImpresora() {
        def respuesta = impresoraService.actualizarImpresora(params)
        if(respuesta == 'errorActualizar') {
            redirect(action:"impresoras", params:[impresora: "errorActualizar"]) 
        }
        if(respuesta == 'actualizarExito') {
            redirect(action:"impresoras", params:[impresora: "actualizarExito"])
        }
    }

    def toner() {
        render(view: "toner")
    }

    def imagen() {
        render(view: "imagen")
    }

    def entregas() {
        render(view: "entregas")
    }
}
