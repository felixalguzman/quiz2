package quiz2

class ReminderJob {
    static triggers = {
      simple repeatInterval: 30000l // execute job once every 1 minute
    }

    def execute() {
        def eventos = Evento.findAll()
        for(Evento e : eventos){
            def duration = groovy.time.TimeCategory.minus(e.fechaInicio, GregorianCalendar.getInstance().getTime())
            if(duration.minutes==5){
                print("Quedan 5 minutos para que empiece el evento " + e.nombre)
            }
        }
    }
}
