$(document).ready(function(){
	
	$("tr #Cantidad").click(function(){
		var idp=$(this).parent().find("#idpro").val();
		var cantidad=$(this).parent().find("#Cantidad").val();
		var url="ServletCarrito?accion=ActualizarCantidad";

		$.ajax({
			type:'POST',
			url:url,
			data: "idp="+idp+"&Cantidad"+cantidad,
			success: function(data,textStatus,jqXHR){
				location.href="ServletCarrito?accion=Carrito"
			}
		});

	});
	
});