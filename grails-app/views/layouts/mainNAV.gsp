<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="all.css" />
    <asset:stylesheet src="normalize.css" />
    <link href="https://fonts.googleapis.com/css2?family=Audiowide&family=Istok+Web&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Cairo&display=swap" rel="stylesheet">
    <asset:stylesheet src="sweetalert2.min.css" />
    <asset:stylesheet src="mainTY.css" />
    <title>Toyota Inventario</title>

    <g:layoutHead/>
</head>
<body class="principal-body">
    <header>
        <div class="barra">
            <div class="contenido-barra contenedor">
                <div class="logo-contenedor">
                    <a href="index.html" class="logo">Toyota <span>Del Parque</span></a>
                </div>
                <div class="informatica">
                    <p>Informatica</p>
                </div> 
            </div>
        </div>
    </header>
    <nav>
        <div class="contenedor">
            <ul class="enlaces">
                <li id="impresoras"><g:link controller="impresora" action="impresoras">Impresoras</g:link>
                    <ul>
                        <li><g:link controller="impresora" action="formImpresora">Agregar</g:link></li>
                        <li><g:link controller="user" action="index">Usuarios</g:link></li>
                    </ul>
                </li>

                <li id="toners"><g:link controller="toner" action="toners">Toner</g:link>
                    <ul>
                        <li><g:link controller="toner" action="formToner">Agregar</g:link></li>
                    </ul>
                </li>

                <li id="unidades"><g:link controller="toner" action="unidades">Imagen</g:link>
                    <ul>
                        <li><g:link controller="toner" action="formToner">Agregar</g:link></li>
                    </ul>
                </li>
                <li id="compras"><g:link controller="compra" action="compras">Compras</g:link></li>
                <li id="entregas"><g:link controller="entrega" action="entregas">Entregas</g:link></li>
                <li id="sesion"><g:link controller="user" action="logout">Cerrar Sesion</g:link></li>
            </ul>
        </div>
    </nav>


    <asset:javascript src="jquery.js" />
    <asset:javascript src="sweetalert2.min.js"/>
    <asset:javascript src="mainTY.js"/>
    <g:layoutBody/>
</body>
</html>