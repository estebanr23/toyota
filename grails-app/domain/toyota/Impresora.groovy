package toyota

class Impresora {
    String marca
    String color
    String ubicacion
    String estado
    String imagenUrl
    static hasMany = [toner: Toner]

    static constraints = {
        marca(blank: false, maxSize: 50, nullable: false)
        color(blank: false, maxSize: 30, nullable: false)
        ubicacion(blank: false, maxSize: 50, nullable: false)
        estado(blank: false, inList: ['Activo', 'Inactivo'])
        imagenUrl(blank: false, nullable: false)
    }
}
