<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>

    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>

<h1>Eventos</h1>

<table class="table table-hover">
    <thead>
    <tr>

        <th>Nombre</th>
        <th>Descripción</th>
        <th>Fecha Inicio</th>
        <th>Fecha Fin</th>
        <th>Agregar</th>


    </tr>

    </thead>

    <tbody>

    <g:each in="${eventos}" var="evento">
        <tr>
            <td>${evento.nombre}</td>
            <td>${evento.descripcion}</td>
            <td><g:formatDate format="dd-MM-yyyy HH:mm" date="${evento.fechaInicio}"/></td>
            <td><g:formatDate format="dd-MM-yyyy HH:mm" date="${evento.fechaFin}"/></td>
            <td> <button class="btn btn-success" onclick="agregarEvento(${evento.id})"  >Agregar</button></td>
        </tr>
    </g:each>
    </tbody>
</table>

<script>

    $(document).ready(function () {


    });

    function agregarEvento(id) {

        $.ajax({
            type: 'POST',
            data: {id:id},
            url: "${g.createLink(controller:'usuario',action:'asignarEvento')}",
            success: function (res) {


            }
        });

    }

</script>

</body>
</html>
