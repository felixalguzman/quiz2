package quiz2

class BootStrap {

    def init = { servletContext ->
        def date = GregorianCalendar.getInstance()
        date.add(GregorianCalendar.MINUTE, 6)
        def evento = new Evento(nombre: "name", descripcion: "descr", fechaInicio:  date.getTime(), fechaFin: new Date(2018,11,2,19,29), edadPermitida: 18)
        evento.save(flush: true,failOnError: true)
    }
    def destroy = {
    }
}
