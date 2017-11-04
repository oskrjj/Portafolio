$(document).ready(function(){
    $.getJSON("/WebVales/ListarServicios",function(servicios){
        var table = '';
        $.each(servicios, function(indice, servicio){
            table += '<tr>';
            table += '<td>'+servicio.IdServicio+'</td>';
            table += '<td>'+servicio.DescripcionServicio+'</td>';
            table += '<td> <input type ="radio" value='+servicio.DES+'</td>';
            table += '</tr>';
        }) ;
        $('#TablaServicios').append(table);
    }); 
    $('#TablaServicios').bdt({
                    showSearchForm: 1,
                    showEntriesPerPageField: 1
                });
});  
