<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <title>Evento</title>
    </head>
    <body>
    <h1>Nuevo evento</h1>

    <g:form class="form" action="save">

        <div class="form-group">
            <label for="nombre" >Nombre</label>
            <input id="nombre" name="nombre" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="descripcion" >Descripcion</label>
            <input id="descripcion" name="descripcion" class="form-control" required>
        </div>


        <div class="form-group">
            <label for="fechaInicio" >Fecha de Inicio</label>
            <input id="fechaInicio" name="fechaInicio" type="date" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="horaInicio" >Hora de Inicio</label>
            <input id="horaInicio" name="horaInicio" type="time" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="fechaFin" >Fecha de Fin</label>
            <input id="fechaFin" name="fechaFin" type="date" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="horaFin" >Hora de Fin</label>
            <input id="horaFin" name="horaFin" type="time" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="edadPermitida" >Edad permitida</label>
            <input id="edadPermitida" type="number" name="edadPermitida" class="form-control" required>
        </div>

    %{--<button type="reset" class="btn  btn-warning">Cancelar</button>--}%
        <button type="reset" class="newsletter_button trans_300"><span>Cancelar</span></button>
        <button type="submit" class="newsletter_button trans_300"><span>OK</span></button>
    %{--<button type="submit" class="btn  btn-primary">OK</button>--}%
    </g:form>
    </body>
</html>
