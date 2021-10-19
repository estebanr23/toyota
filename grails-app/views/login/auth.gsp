<!doctype html>
<html>
<head>
    <meta name="layout" content="mainTY"/>
    <title>Toyota del Parque</title>
</head>
<body>
    <main>
        <div class="fondo-login">
            <div class="formulario-login">
                <h3>Iniciar Sesión</h3>
                <div id="mensaje-error" class="mensaje-error"></div>
                <g:form controller="login" action="authenticate">
                    <div class="campo">
                        <input type="text" name="username" placeholder="Usuario">
                    </div>
                    <div class="campo">
                        <input type="password" name="password" placeholder="Contraseña">
                    </div>
                    <input type="submit" class="button" id="ingresar" value="Ingresar">
                    <p>Completa los datos para acceder.</p>
                </g:form>
            </div>
        </div>
    </main>
</body>
</html>