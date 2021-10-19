package toyota

class Entrega {
    Toner toner
    Date fechaEntrega
    String ubicacionEntrega

    static constraints = {
        fechaEntrega(blank: false, nullable:false)
        ubicacionEntrega(blank: false, nullable:false)
    }
}
