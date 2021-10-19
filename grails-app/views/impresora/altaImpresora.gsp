<!doctype html>
<html>
<head>
    <meta name="layout" content="mainNAV"/>
    <title>Toyota del Parque</title>
</head>
<body>
    <main class="contenedor modelo">
        <h1 class="centrar-texto">Agregar Impresora</h1>
        
        <div class="form-tu">
            <g:form controller="impresora" action="altaImpresora">
                <fieldset>
                    <div class="campo">
                        <label for="">Marca</label>
                        <input type="text" id="marca" name="marca" placeholder="Marca">
                    </div>
                    <div class="campo">
                        <label for="">Color</label>
                        <input type="text" id="color" name="color" placeholder="Color">
                    </div>
                    <div class="campo">
                        <label for="">Ubicacion</label>
                        <input type="text" id="ubicacion" name="ubicacion" placeholder="Ubicacion">
                    </div>
                    <div class="campo">
                        <label for="">Url Imagen</label>
                        <input type="text" id="imagenUrl" name="imagenUrl" placeholder="Url de Imagen">
                    </div>
                    <input class="btn" type="submit" value="Agregar">
            </fieldset>
            </g:form>
        </div>
    </main>
</body>
</html>