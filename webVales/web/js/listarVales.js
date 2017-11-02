$(document).ready(function(){
    $.getJSON("/WebVales/ListarTicket",function(tickets){
        var table = '';
        $.each(tickets, function(indice, ticket){
            table += '<tr>';
            table += '<td>'+ticket.CodigoVale+'</td>';
            table += '<td>'+ticket.EmpleadoRut+'</td>';
            table += '<td>'+ticket.NombreEmpleado+'</td>';
            table += '<td>'+ticket.Hora+'</td>';
            table += '<td>'+ticket.Turno+'</td>';
            table += '<td>'+ticket.Valor+'</td>';
            table += '<td>'+ticket.FechaEmision+'</td>';
            table += '<td> <input type ="radio" value='+ticket.CodigoVale+'</td>';
            table += '</tr>';
        }) ;
        $('#TablaTickets').append(table);
    }); 
   
});  
