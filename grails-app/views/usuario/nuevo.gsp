<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

        <title>Nuevo usuario</title>
    </head>
    <body>
      <h1>Nuevo usuario</h1>

    <g:form class="form" action="create">

        <div class="form-group">
            <label for="nombre" >Nombre</label>
            <input id="nombre" name="nombre" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="apellido" >Apellido</label>
            <input id="apellido" name="apellido" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="cedula" >Cedula</label>
            <input id="cedula" name="cedula" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="fechaNacimiento" >Fecha de Nacimiento</label>
            <input id="fechaNacimiento" name="fechaNacimiento" type="date" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="email" >Correo</label>
            <input id="email" type="email" name="email" class="form-control" required>
        </div>

        %{--<button type="reset" class="btn  btn-warning">Cancelar</button>--}%
        <button type="reset" class="newsletter_button trans_300"><span>Cancelar</span></button>
        <button type="submit" class="newsletter_button trans_300"><span>OK</span></button>
        %{--<button type="submit" class="btn  btn-primary">OK</button>--}%
    </g:form>
    </body>
</html>