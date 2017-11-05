$("#FormBuscar").submit(function(event){
    var $findUser = $("#UserFind").val();
    alert($findUser);
    event.preventDefaul();
    $.getJSON("/WebVales/BuscarUsuarioPorRut", {rut:$findUser},
                        function(empleado){
                           table += '<tr>';
                            table += '<td>'+empleado.RutEmpleado+'</td>';
                            table += '<td>'+empleado.NombreEmpleado+'</td>';
                            table += '<td>'+empleado.CorreoEmpleado+'</td>';

                            table += '<td> \n\
                                    <form action="/WebVales/EliminarUsuario" method="POST"  >\n\
                                        <button type="submit" class="btn btn-default">Eliminar</button>\n\
                                        <input type ="text" name="txtRutEliminar" value='+empleado.RutEmpleado+' hidden="true"></td>\n\
                                    </form>';
                            table += '</tr>';
                        }) ;
                        $('#TablaEmpleados').append(table);
                     
}) 

 