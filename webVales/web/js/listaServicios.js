$(document).ready(function(){
    $.getJSON("/WebVales/ListarServicios",function(servicios){
        var table = '';
        $.each(servicios, function(indice, servicio){
            table += '<tr>';
            table += '<td>'+servicio.DES+'</td>';
            table += '<td>'+servicio.DescripcionServicio+'</td>';
            table += '<td> <input type ="radio" value='+servicio.DES+'</td>';
            table += '</tr>';
        }) ;
        $('#TablaServicios').append(table);
    }); 
   
});  
