$(document).ready(function(){
    $.getJSON("/WebVales/ListarCargos",function(cargos){
        $.each(cargos, function(indice, cargo){
            jQuery("select[name='ddl_cargo']").append("<option value=\"" + cargo._idCargo + "\">" + cargo._descripcionCargo + "</option>");            
        }) ;
    }); 
   
});   

$(document).ready(function(){
    $.getJSON("/WebVales/ListarTipoUsuario" , function(tipos){
        $.each(tipos, function(indice,tipo){
            jQuery("select[name='ddl_tipo']").append("<option value=\"" + tipo._idTipo + "\">"+ tipo._descripcionTipo + "</option>");
        });
    });
});
$(document).ready(function(){
    $.getJSON("/WebVales/ListarTurnos" , function(turnos){
        $.each(turnos,function(indice,turno){
           jQuery("select[name='ddl_turno']").append("<option value=\"" + turno.IdTurno + "\">" + turno.Descripcion + "</option>"); 
        });
    });
});

$(document).ready(function(){
    $.getJSON("/WebVales/ListarComensales" , function(comensales){
        $.each(comensales,function(indice,comensal){
           jQuery("select[name='ddl_comensal']").append("<option value=\"" + comensal.Id_Tipo_Comensal + "\">" + comensal.Descripcion + "</option>"); 
        });
    });
});
 