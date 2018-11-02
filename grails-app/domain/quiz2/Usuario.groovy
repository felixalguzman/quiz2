package quiz2

class Usuario {

    String nombre
    String apellido
    String cedula
    String email
    Date fechaNacimiento

    static hasMany = [eventos: Evento]
    static constraints = {
        email email: true
    }
}
