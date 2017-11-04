$(document).ready(function(){
    $.getJSON("/WebVales/ListarEmpleados",function(empleados){
        var table = '';
        $.each(empleados, function(indice, empleado){
            table += '<tr>';
            table += '<td>'+empleado.RutEmpleado+'</td>';
            table += '<td>'+empleado.NombreEmpleado+'</td>';
            table += '<td>'+empleado.CorreoEmpleado+'</td>';
            table += '<td> <input type ="radio" value='+empleado.RutEmpleado+'</td>';
            table += '</tr>';
        }) ;
        $('#TablaEmpleados').append(table);
    }); 
   $('#TablaEmpleados').bdt({
                    showSearchForm: 1,
                    showEntriesPerPageField: 1
                });
});  

