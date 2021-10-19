package toyota

class TonerController {
    def tonerService
    
    def index() { }

    def toners() {
        [listaToner: tonerService.listarToners()]
    }

    def unidades() {
        [listaUnidad: tonerService.listarUnidades()]
    }

    def formToner() {
        render(view:"altaToner", model:[impresoras: tonerService.selectImpresora()])
    }

    def altaToner() {
        def tipo = tonerService.agregarToner(params)
        if(tipo == 'Toner') {
            redirect(action:"toners", params:[toner:'exito'])
        }
        if(tipo == 'Unidad') {
            redirect(action:"unidades", params:[unidad:'exito'])
        }
        if(tipo == 'Cartucho') {
            redirect(action:"toners", params:[cartucho:'exito'])
        }
        if(tipo == 'error') {
            redirect(action:"formToner", params:[insumo:'error'])
        }  
    }

    def bajaToner() {
        def insumo = tonerService.eliminarToner(new Long(params.id))
        if(insumo == 'eliminadoToner') {
            redirect(action:"toners", params:[insumo:'eliminadoToner'])
        }
        if(insumo == 'eliminadoUnidad') {
            redirect(action:"toners", params:[insumo:'eliminadoUnidad'])
        }
        if(insumo == 'eliminadoCartucho') {
            redirect(action:"toners", params:[insumo:'eliminadoCartucho'])
        }
        if(insumo == 'error') {
            redirect(action:"toners", params:[insumo:'errorEliminar'])
        }
    }
}
