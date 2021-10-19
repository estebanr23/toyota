(function() {
      'use strict';

      document.addEventListener('DOMContentLoaded', function() {

            // Mensaje de inicio de sesion incorrecto.
            var divMensaje = document.getElementById('mensaje-error');
            var tituloLogin = document.querySelector('.fondo-login h3');
            var urlSearch = window.location.search;
            var urlMod = urlSearch.replace('?login_error=1', 'error');

            if(urlMod == 'error') {
                  tituloLogin.style.marginBottom = '2rem'; 
                  divMensaje.innerHTML = 'Lo siento, no hemos encontrado ningún usuario con ese nombre y contraseña.'
            }

            // Indicar pestaña actual
            var pathName = window.location.pathname;
            switch (pathName) {
                  case '/':
                        document.getElementById('impresoras').style.borderBottom = '1px solid rgba(228, 53, 53, 0.89)';
                        break;
                  case '/toner/toners':
                        document.getElementById('toners').style.borderBottom = '1px solid rgba(228, 53, 53, 0.89)';
                        break;
                  case '/toner/unidades':
                        document.getElementById('unidades').style.borderBottom = '1px solid rgba(228, 53, 53, 0.89)';
                        break;
                  case '/compra/compras':
                        document.getElementById('compras').style.borderBottom = '1px solid rgba(228, 53, 53, 0.89)';
                        break;
                  case '/entrega/entregas':
                        document.getElementById('entregas').style.borderBottom = '1px solid rgba(228, 53, 53, 0.89)';
                        break;        
                  default:
                        break;
            }
      });
})();

$(function() {
      
      var urlSearch = window.location.search;
      // Impresora Alta
      if(urlSearch == '?impresora=altaExito') {
            swal(
                  'Listo',
                  'La impresora se agrego correctamente',
                  'success'
                )
      }
      if(urlSearch == '?impresora=errorAlta') {
            swal(
                  'Error',
                  'La impresora no se agrego, intente nuevamente',
                  'error'
                )
      }

      // Impresora Elminar
      if(urlSearch == '?impresora=errorEliminar') {
            swal(
                  'Error',
                  'La impresora no se pudo eliminar, intente nuevamente',
                  'error'
                )
      }
      if(urlSearch == '?impresora=eliminarExito') {
            swal(
                  'Listo',
                  'La impresora se elimino correctamente',
                  'success'
                )
      }

      // Impresora Actualizar
      if(urlSearch == '?impresora=errorActualizar') {
            swal(
                  'Error',
                  'Los datos no se actualizaron correctamente, intente nuevamente',
                  'error'
                )
      }
      if(urlSearch == '?impresora=actualizarExito') {
            swal(
                  'Listo',
                  'Los datos se actualizaron correctamente',
                  'success'
                )
      }

      // Agregar Toner/Unidad
      if(urlSearch == '?toner=exito') {
            swal(
                  'Listo',
                  'El toner se agrego correctamente',
                  'success'
                )
      }
      if(urlSearch == '?cartucho=exito') {
            swal(
                  'Listo',
                  'El cartucho se agrego correctamente',
                  'success'
                )
      }
      if(urlSearch == '?unidad=exito') {
            swal(
                  'Listo',
                  'La unidad de imagen se agrego correctamente',
                  'success'
                )
      }
      if(urlSearch == '?insumo=error') {
            swal(
                  'Error',
                  'Hubo un problema al cargar los datos, intente nuevamente',
                  'error'
                )
      }

      // Elminar Toner/Unidad
      if(urlSearch == '?insumo=eliminadoToner') {
            swal(
                  'Listo',
                  'El toner se elimino correctamente',
                  'success'
                )
      }
      if(urlSearch == '?insumo=eliminadoUnidad') {
            swal(
                  'Listo',
                  'La unidad de imagen se elimino correctamente',
                  'success'
                )
      }
      if(urlSearch == '?insumo=eliminadoCartucho') {
            swal(
                  'Listo',
                  'El cartucho se elimino correctamente',
                  'success'
                )
      }
      if(urlSearch == '?insumo=errorEliminar') {
            swal(
                  'Error',
                  'Hubo un problema al borrar los datos, intente nuevamente',
                  'error'
                )
      }
      
      // Compra
      if(urlSearch == '?compra=compraError') {
            swal(
                  'Error',
                  'La compra no fue cargada, intente nuevamente',
                  'error'
                )
      }
      if(urlSearch == '?compra=compraExito') {
            swal(
                  'Listo',
                  'La compra se registro correctamente',
                  'success'
                )
      }

      // Entregas
      if(urlSearch == '?entrega=errorEntrega') {
            swal(
                  'Error',
                  'Hubo un problema al realizar la entrega, intente nuevamente',
                  'error'
                )
      }
      if(urlSearch == '?entrega=exitoEntrega') {
            swal(
                  'Listo',
                  'La entrega se registro correctamente',
                  'success'
                )
      }

      // Usuarios
      if(urlSearch == '?usuario=error') {
            swal(
                  'Error',
                  'Hubo un problema al registrar el usuario, intente nuevamente',
                  'error'
                )
      }
      if(urlSearch == '?usuario=exito') {
            swal(
                  'Listo',
                  'El usuario se registro correctamente',
                  'success'
                )
      }

});