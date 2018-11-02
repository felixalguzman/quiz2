package quiz2

import grails.validation.ValidationException

import java.sql.Time

import static org.springframework.http.HttpStatus.*

class EventoController {

    EventoService eventoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond eventoService.list(params), model: [eventoCount: eventoService.count()]
    }

    def show(Long id) {
        respond eventoService.get(id)
    }

    def create() {

    }

    def save(String nombre, String descripcion, Date fechaInicio, Date fechaFin, int edadPermitida, String horaInicio, String horaFin) {

        def calIni = Calendar.getInstance()
        calIni.setTime(fechaInicio)

        def calFin = Calendar.getInstance()
        calFin.setTime(fechaFin)

        def horaMinInicio = horaInicio.split(":")
        def horaMinFin = horaFin.split(":")

        calIni.set(Calendar.HOUR_OF_DAY, Integer.valueOf(horaMinInicio[0]))
        calIni.set(Calendar.MINUTE, Integer.valueOf(horaMinInicio[1]))


        calFin.set(Calendar.HOUR_OF_DAY, Integer.valueOf(horaMinFin[0]))
        calFin.set(Calendar.MINUTE, Integer.valueOf(horaMinFin[1]))

        def evento = new Evento()
        evento.setNombre(nombre)
        evento.setDescripcion(descripcion)

        evento.setFechaInicio(calIni.getTime())
        evento.setFechaFin(calFin.getTime())
        evento.setEdadPermitida(edadPermitida)

        evento.save(flush: true, failOnError: true)

        redirect(uri: '/')
    }

    def edit(Long id) {
        respond eventoService.get(id)
    }

    def update(Evento evento) {
        if (evento == null) {
            notFound()
            return
        }

        try {
            eventoService.save(evento)
        } catch (ValidationException e) {
            respond evento.errors, view: 'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'evento.label', default: 'Evento'), evento.id])
                redirect evento
            }
            '*' { respond evento, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        eventoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'evento.label', default: 'Evento'), id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'evento.label', default: 'Evento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
