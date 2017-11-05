$(document).ready(function(){
    $.getJSON("/WebVales/ListarServicios",function(servicios){
        $.each(servicios, function(indice, servicio){
            jQuery("select[name='ddl_servicios']").append("<option value=\"" + servicio.IdServicio + "\">" + servicio.DescripcionServicio + "</option>");            
        }) ;
    }); 
   
});  