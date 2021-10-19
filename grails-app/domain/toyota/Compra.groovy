package toyota

class Compra {
    Toner toner
    Date fechaCompra
    Integer ingreso
    
    static constraints = {
        fechaCompra(blank: false, nullable: false)
        ingreso(blank: false, nullable: false)
    }
}
