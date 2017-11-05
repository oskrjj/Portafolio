$(document).ready(function(){
    $.getJSON("/WebVales/ListarServicios",function(servicios){
        var table = '';
        $.each(servicios, function(indice, servicio){
            table += '<tr>';
            table += '<td>'+servicio.IdServicio+'</td>';
            table += '<td>'+servicio.DescripcionServicio+'</td>';
            table += '<td> \n\
                    <form action="/WebVales/EliminarServicio" method="POST"  >\n\
                        <button type="submit" class="btn btn-default">Eliminar</button>\n\
                        <input type ="text" name="txtServicioEliminar" value='+servicio.IdServicio+' hidden="true"></td>\n\
                    </form>';
            table += '</tr>';
        }) ;
        $('#TablaServicios').append(table);
    }); 
    $('#TablaServicios').bdt({
                    showSearchForm: 1,
                    showEntriesPerPageField: 1
                });
});  
