<!doctype html>
<html>
<head>
    <meta name="layout" content="mainNAV"/>
    <title>Toyota del Parque</title>
</head>
<body>
    <main class="contenedor modelo">
        <h1 class="centrar-texto">Realizar Compra</h1>

        <g:each in="${toner?}">
           <div class="form-tu">
                <g:form controller="compra" action="finalizarCompra" id="${it.id}">
                    <fieldset>
                        <div class="campo">
                            <label for="">Codigo:</label>
                            <span>${it.codigo}</span>
                        </div>
                        <div class="campo">
                            <label for="">Marca:</label>
                            <span>${it.marca}</span>
                        </div>
                        <div class="campo">
                            <label for="">Cantidad:</label>
                            <span>${it.cantidad}</span>
                        </div>
                        <div class="campo">
                            <label for="">Impresora:</label>
                            <span>${it.impresora.marca}</span>
                        </div>
                        <div class="campo">
                            <label for="">Ingreso:</label>
                            <input type="number" id="ingreso" name="ingreso" placeholder="Ingrese la Cantidad">
                        </div>
                        <input class="btn" type="submit" value="Finalizar">
                    </fieldset>
                </g:form>
            </div>
        </g:each>
    </main>
</body>
</html>