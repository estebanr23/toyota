<!doctype html>
<html>
<head>
    <meta name="layout" content="mainNAV"/>
    <title>Toyota del Parque</title>
</head>
<body>
    <main class="contenedor modelo">

       <h1 class="centrar-texto">Agregar Insumo</h1>
        <div class="form-tu">
            <g:form controller="toner" action="altaToner">
                <fieldset>
                    <div class="campo">
                        <label for="">Codigo</label>
                        <input type="text" id="codigo" name="codigo" placeholder="Codigo">
                    </div>
                    <div class="campo">
                        <label for="">Marca</label>
                        <input type="text" id="marca" name="marca" placeholder="Marca">
                    </div>
                    <div class="campo">
                        <label for="">Tipo</label>
                        <select name="tipo" id="tipo">
                               <option name="tipo" value="Toner">Toner</option>
                               <option name="tipo" value="Unidad">Unidad</option>
                               <option name="tipo" value="Cartucho">Cartucho</option>
                        </select>
                    </div>
                    <div class="campo">
                        <label for="">Cantidad</label>
                        <input type="number" id="cantidad" name="cantidad" placeholder="Cantidad" min="0">
                    </div>
                    <div class="campo">
                        <label for="">Stock Critico</label>
                        <input type="number" id="stockCritico" name="stockCritico" placeholder="Stock minimo" min="0">
                    </div>
                    <div class="campo">
                        <label for="">Impresora</label>
                        <select name="impresora" id="impresora">
                            <g:each in="${impresoras?}">
                               <option name="impresora" value="${it.id}">${it.marca} - ${it.ubicacion}</option>
                            </g:each>
                        </select>
                    </div>
                    <input class="btn" type="submit" value="Agregar">
                </fieldset>
            </g:form>
        </div>
    </main>
</body>
</html>