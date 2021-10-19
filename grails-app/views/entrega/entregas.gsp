<!doctype html>
<html>
<head>
    <meta name="layout" content="mainNAV"/>
    <title>Toyota del Parque</title>
</head>
<body>
    <main class="tabla">
        <h1 class="centrar-texto">Entregas Realizadas</h1>
        <div class="contenedor-tabla">
            <ul class="fila">
                <li class="encabezado">Codigo</li>
                <li class="encabezado">Marca</li>
                <li class="encabezado">Tipo</li>
                <li class="encabezado">Fecha</li>
                <li class="encabezado">Impresora</li>
                <li class="encabezado">Ubicacion</li>
            </ul>
            <g:each in="${listaEntrega?}">
                  <div class="contenido-tabla">
                        <ul class="fila">
                              <li>${it.toner.codigo}</li>
                              <li>${it.toner.marca}</li>
                              <li>${it.toner.tipo}</li>
                              <li>${it.fechaEntrega}</li>
                              <li>${it.toner.impresora.marca}</li>
                              <li>${it.ubicacionEntrega}</li>
                        </ul>
                  </div>
            </g:each> 
        </div>
    </main>
</body>
</html>