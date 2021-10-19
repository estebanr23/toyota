package toyota

class Toner {
    String codigo
    String marca
    String tipo
    Integer cantidad
    Integer stockCritico
    String estado
    static belongsTo = [impresora: Impresora]

    static constraints = {
        codigo(blank: false, maxSize: 50, nullable: false)
        marca(blank: false, maxSize: 50, nullable: false)
        tipo(blank: false, nullable: false, inList: ['Toner', 'Unidad','Cartucho'])
        cantidad(blank: false, maxSize: 30, nullable: false)
        stockCritico(blank: false, maxSize: 30, nullable: false)
        estado(blank: false, inList: ['Activo', 'Inactivo'])
    }
}
