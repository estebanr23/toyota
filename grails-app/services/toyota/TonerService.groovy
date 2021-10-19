package toyota

import grails.gorm.transactions.Transactional

@Transactional
class TonerService {

    def serviceMethod() {

    }

    List listarToners() {
        def ton = Toner.findAll("from Toner as t where (t.tipo =:tipo1  AND t.estado=:estado) OR (t.tipo =:tipo2 AND t.estado=:estado) order by t.codigo", [tipo1: 'Toner', tipo2: 'Cartucho', estado: 'Activo'])
        return ton
    }

    List listarUnidades() {
        def ton = Toner.findAll("from Toner as t where t.tipo =:tipo AND t.estado=:estado order by t.codigo", [tipo: 'Unidad', estado: 'Activo'])
        return ton
    }

    List selectImpresora() {
        def imp = Impresora.findAll("from Impresora as i where i.estado =:estado", [estado:'Activo'])
        return imp
    }

    def agregarToner(Map params) {
        def ton = new Toner(params)
        ton.estado = 'Activo'
        ton.save(flush:true)

        if (!ton.save()) {
            def respuesta = 'error'
            return respuesta
        } else {
            return params.tipo
        }
    }

    def eliminarToner(Long id) {
        def ton = Toner.get(id)
        def tipoRespuesta = ton.tipo
        ton.estado = "Inactivo"
        ton.save(flush:true)

        if (!ton.save()) {
            def respuesta = 'errorEliminar'
            return respuesta
        } else {
            def respuesta = 'eliminado'+tipoRespuesta
            return respuesta
        }
    }
}
