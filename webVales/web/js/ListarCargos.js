  $(document).ready(function(){
        $.getJSON("/WebVales/ListarCargos",function(cargos){
        $.each(cargos, function(indice, cargo){
            jQuery("select[name='ddl_cargo']").append("<option value=\"" + cargo._idCargo + "\">" + cargo._descripcionCargo + "</option>");            
         }) ;
        }); 
        
       
    });