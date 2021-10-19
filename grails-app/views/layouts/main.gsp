<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="all.css" />
    <asset:stylesheet src="normalize.css" />
    <link href="https://fonts.googleapis.com/css2?family=Audiowide&family=Istok+Web&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Cairo&display=swap" rel="stylesheet">
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="sweetalert2.min.css" />
    <asset:stylesheet src="mainTY.css" />

    <g:layoutHead/>
</head>
<body>
    <header>
        <div class="user-barra">
            <div class="contenido-barra contenedor">
                <div class="logo-contenedor">
                    <a href="#" class="logo">Toyota <span>Del Parque</span></a>
                </div>
                <div class="informatica">
                    <p>Informatica</p>
                </div> 
            </div>
        </div>
    </header>
    <g:layoutBody/>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>
    <asset:javascript src="jquery.js" />
    <asset:javascript src="sweetalert2.min.js"/>
    <asset:javascript src="mainTY.js"/>

</body>
</html>
