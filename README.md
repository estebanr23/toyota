# toyota

La aplicacion fue desarrollada para el area de Informatica de la consecionaria Toyota, con el proposito de poder llevar un control de los insumos para impresoras. En la consecionaria existen distintas areas como posventa, administracion, repuestos, ventas, etc. En cada una se utilizan impresoras para la generacion de facturas, presupuestos, remitos, etc. Las impresoras utilizan toner y unidades de imagen que deben ser cambiadas cada cierto periodo de tiempo para su correcto funcionamiento. 
El sistema permite tener un listado de los insumos disponibles en la consecionaria para realizar el cambio cuando se solicite, dejando registrado la entrega, ya sea de toner o unidad de imagen. Cuenta con alerta de Stock minimo para el envio de email a los encargados en el area de informatica de realizar la compra de los insumos una vez alcanzado una cantidad menor a un valor establecido. Tambien se registran los datos de las compras realizadas, fecha, cantidad, tipo de insumo comprado, impresora y area donde esta ubicada.
Los usuarios deben tener un usuario y contraseña para acceder al sistema. Se puede realizar el ABM de los mismos en caso de ser necesario añadir o eliminar un usuario.

Las tecnologias utilizadas para desarrollar la aplicacion web son: 
HTML5
CSS3
JavaScript
Jquery
Grails 3.3.8
PostgreSQL 9.5.3

Instalacion:
1) Descargar e instalar el framework Grails version 3.3.8
http://docs.grails.org/3.3.8/guide/single.html

2) Descargar e instalar PostgreSQL 9.5.3
https://www.postgresql.org/docs/9.5/index.html

3) Crear la Base de datos. Asignar el nombre "toyota" a la misma.

4) En el archivo application.yml configurar usuario y contraseña de Postgres.

5) Configurar los parametros para el envio de alertas por email.
https://plugins.grails.org/plugin/grails/mail
