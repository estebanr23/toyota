package toyota

import grails.gorm.transactions.Transactional

@Transactional
class ImpresoraService {

    def serviceMethod() {

    }

    List listarImpresoras() {
        def imp = Impresora.findAll("from Impresora as i where i.estado=:estado", [estado: 'Activo'])
        return imp
    }

    def agregarImpresora(Map params) {
        def imp = new Impresora(params)
        imp.estado = 'Activo' 
        imp.save(flush:true)
            
        if (!imp.save()) {
            def fin = 'errorAlta'
            return fin
        } else {
            def fin = 'altaExito'
            return fin
        }      
    }

    def eliminarImpresora(Long id) {
        def imp = Impresora.get(id)
        imp.estado = "Inactivo"
        imp.save(flush:true)

        if (!imp.save()) {
            def respuesta = 'errorEliminar'
            return respuesta
        } else {
            def respuesta = 'eliminarExito'
            return respuesta
        }     
    }

    def datosImpresora(Long id) {
        def imp = Impresora.get(id)
        return imp
    }

    def actualizarImpresora(Map params) {
        def imp = Impresora.get(params.id)
        imp.marca = params.marca
        imp.color = params.color
        imp.ubicacion = params.ubicacion
        imp.imagenUrl = params.imagenUrl
        imp.save(flush:true)

        if (!imp.save()) {
            def respuesta = 'errorActualizar'
            return respuesta
        } else {
            def respuesta = 'actualizarExito'
            return respuesta
        } 
    }
}
