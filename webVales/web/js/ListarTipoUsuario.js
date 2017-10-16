$(document).ready(function(){
     $.getJSON("/WebVales/ListarTipoUsuario",function(users){
           $.each(users,function(indice,usuario){
              jQuery("select[name='ddl_tipo']").append("<option value=\"" + usuario._idTipo + "\>" + usuario._descripcionTipo + "</option>");
              //jQuery("select[name='ddl_cargo']").append("<option value=\"" + cargo._idCargo + "\">" + cargo._descripcionCargo + "</option>");            
           });
        });


});