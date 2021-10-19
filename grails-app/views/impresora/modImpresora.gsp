<!doctype html>
<html>
<head>
    <meta name="layout" content="mainNAV"/>
    <title>Toyota del Parque</title>
</head>
<body>
    <main class="contenedor modelo">
        <h1 class="centrar-texto">Modificar Impresora</h1>
        
        <div class="form-tu">
        <g:each in="${impresoraDatos?}">
           <g:form controller="impresora" action="actualizarImpresora">
                <fieldset>
                    <div class="campo">
                        <label for="">Marca</label>
                        <input type="text" id="marca" name="marca" value="${it.marca}">
                    </div>
                    <div class="campo">
                        <label for="">Color</label>
                        <input type="text" id="color" name="color" value="${it.color}">
                    </div>
                    <div class="campo">
                        <label for="">Ubicacion</label>
                        <input type="text" id="ubicacion" name="ubicacion" value="${it.ubicacion}">
                    </div>
                    <div class="campo">
                        <label for="">Url Imagen</label>
                        <input type="text" id="imagenUrl" name="imagenUrl" value="${it.imagenUrl}">
                    </div>
                     <input type="hidden" id="id" name="id" value="${it.id}">
                    <input class="btn" type="submit" value="Guardar">
                </fieldset>
            </g:form>
        </g:each>
        </div>
    </main>
</body>
</html>