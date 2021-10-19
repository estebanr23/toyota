<!doctype html>
<html>
<head>
    <meta name="layout" content="mainNAV"/>
    <title>Toyota del Parque</title>
</head>
<body>
    <main class="tabla">
        <h1 class="centrar-texto">Unidad de Imagen</h1>
        <div class="contenedor-tabla">
            <ul class="fila">
                <li class="encabezado">Codigo</li>
                <li class="encabezado">Marca</li>
                <li class="encabezado">Cantidad</li>
                <li class="encabezado">Impresora</li>
                <li class="encabezado">Ubicacion</li>
                <li class="encabezado operacion">Operaciones</li>
            </ul>
            
            <g:set var="critico" value="atencion"/>
            <g:each in="${listaUnidad?}">
                <g:if test="${it.cantidad <= it.stockCritico}">
                    <div class="contenido-tabla ${critico}">
                        <ul class="fila">
                            <li>${it.codigo}</li>
                            <li>${it.marca}</li>
                            <li>${it.cantidad}</li>
                            <li>${it.impresora.marca}</li>
                            <li>${it.impresora.ubicacion}</li>
                            <li class="operacion">
                                <g:link class="btn-body" controller="toner" action="bajaToner" id="${it.id}">Eliminar</g:link>
                                <g:link class="btn-body" controller="compra" action="compraToner" id="${it.id}">Comprar</g:link>
                                <g:link class="btn-body" controller="entrega" action="entregaToner" id="${it.id}">Entregar</g:link>
                            </li>
                        </ul>
                    </div>
                </g:if>
                <g:else>
                    <div class="contenido-tabla">
                        <ul class="fila">
                            <li>${it.codigo}</li>
                            <li>${it.marca}</li>
                            <li>${it.cantidad}</li>
                            <li>${it.impresora.marca}</li>
                            <li>${it.impresora.ubicacion}</li>
                            <li class="operacion">
                                <g:link class="btn-body" controller="toner" action="bajaToner" id="${it.id}">Eliminar</g:link>
                                <g:link class="btn-body" controller="compra" action="compraToner" id="${it.id}">Comprar</g:link>
                                <g:link class="btn-body" controller="entrega" action="entregaToner" id="${it.id}">Entregar</g:link>
                            </li>
                        </ul>
                    </div>
                </g:else>
            </g:each>
        </div>
    </main>
</body>
</html>
