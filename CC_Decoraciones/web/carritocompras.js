/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function(){
   $('tr #Deleteitem').click(function(e){
       e.preventDefault();
       var elemento = $(this);
       var id_producto = elemento.parent().find('#idProducto').text();
       $.ajax({
           url : 'borraritem',
           type : 'post',
           data : {id_producto : id_producto},
           success: function(r){
               elemento.parent().parent().remove();
               var elementostabla = $('#shop-table tr');
               if(elementostabla.length <= 1){
                   $('#cart-container').append("<h4>No hay Articulos en el carro</h4>");
               }
               $('#txt-subtotal').text(r);
               $('#txt-total').text(r);
           }           
       })
   });
   
  
});

