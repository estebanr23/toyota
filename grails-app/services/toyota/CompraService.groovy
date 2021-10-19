package toyota

import grails.gorm.transactions.Transactional

@Transactional
class CompraService {

    def serviceMethod() {

    }

    List listarCompra() {
        def com = Compra.findAll("from Compra")
        return com
    }

    def mostrarToner(Long id) {
        def ton = Toner.get(id)
        return ton
    }

    def crearCompra(Map params) {
        // Sumar Toner
        def toner = Toner.get(params.id)
        if(!params.ingreso) {
            def respuesta = 'compraError'
            return respuesta
        } else {
            toner.cantidad = (toner.cantidad + params.ingreso.toInteger())
            toner.save(flush:true)
            // Crear compra
            def com = new Compra(toner: toner, fechaCompra: new Date(), ingreso: params.ingreso)
            com.save(flush:true)

            if(!com.save()) {
                def respuesta = 'compraError'
                return respuesta
            } else {
                def respuesta = 'compraExito'
                return respuesta
            }
        }
    }
}
