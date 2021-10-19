package toyota

import grails.gorm.transactions.Transactional

@Transactional
class EntregaService {

    def serviceMethod() {

    }

    List listarEntregas() {
        def ent = Entrega.findAll("from Entrega")
        return ent
    }

    def mostrarToner(Long id) {
        def ton = Toner.get(id)
        return ton
    }

    def crearEntrega(Map params) {
        // Restar un toner
        def toner = Toner.get(params.id)
        toner.cantidad = (toner.cantidad - 1)
        toner.save(flush:true)

        if(!toner.save()) {
            def respuesta = 'errorEntrega'
            return respuesta
        } else {
            // Generar una entrega
            def ent = new Entrega(toner: toner, fechaEntrega: new Date(), ubicacionEntrega: params.ubicacionEntrega)
            ent.save(flush:true)

            if(!ent.save()) {
                def respuesta = 'errorEntrega'
                return respuesta
            } else {
                // Enviar Email
                if(toner.cantidad <= toner.stockCritico && toner.tipo == 'Toner') {
                    def mensajeStock = "Se ha alcanzado el stock minimo en el Toner de la impresora " +toner.impresora.marca + " ubicada en " + toner.impresora.ubicacion + "."
                    return mensajeStock
                }
                if(toner.cantidad <= toner.stockCritico && toner.tipo == 'Unidad') {
                    def mensajeStock = "Se ha alcanzado el stock minimo en la Unidad de Imagen de la impresora " + toner.impresora.marca + " ubicada en " + toner.impresora.ubicacion + "."
                    return mensajeStock
                }
                // Entrega sin Email
                if(toner.cantidad > toner.stockCritico) {
                    def respuesta = 'exitoEntrega'
                    return respuesta
                }
            }       
        }
    }
}
