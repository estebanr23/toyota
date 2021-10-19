<!doctype html>
<html>
<head>
    <meta name="layout" content="mainNAV"/>
    <title>Toyota del Parque</title>
</head>
<body>
    <main class="contenedor modelo">
        <h1 class="centrar-texto">Impresoras</h1>
        <g:each in="${listaImpresora?}">
           <article class="contenedor-impresora">
                <div class="lado-izq">
                    <!--<asset:image src="images/Impresora1.jpg" alt="Imagen Impresora" />-->
                    <img src="${it.imagenUrl}" alt="Imagen Impresora" />
                </div>
                <div class="lado-der">
                    <div class="infoimp">
                        <h3>${it.marca}</h3>
                        <ul>
                            <li>Color: ${it.color}</li>
                            <li>Ubicacion: ${it.ubicacion}</li>
                        </ul>
                        <g:link class="btn-body" controller="impresora" action="bajaImpresora" id="${it.id}">Eliminar</g:link>
                        <g:link class="btn-body" controller="impresora" action="modImpresora" id="${it.id}">Modificar</g:link>
                    </div>
                </div>
            </article>
        </g:each>
    </main>
</body>
</html>
