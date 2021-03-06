<%-- 
    Document   : index
    Created on : 29/08/2016, 05:42:52 PM
    Author     : RAT
--%>

<%@page import="java.util.*" session="true"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.proyectorat.model.Usuario"%>
<%@page import="com.proyectorat.manager.UsuarioManagerImpl"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="">
        <meta name="author" content="RAT" >

        <title>Registro de actividades y tiempos</title>

        <link rel="shorcut icon" href="../resources/images/favicon.png" type="image/png"/>

        <link href="resources/css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
        <link href="resources/css/style_index.css" rel="stylesheet">
        <link href="resources/css/style_login.css" rel="stylesheet">
        <link href="resources/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    </head>

    <body>
        <div id="wrapper">

            

            <% String user = null;
                user = (String) session.getAttribute("usuario");
                /* String name = null;
                try{
                    user = (request.getAttribute("usuario")).toString();
                    name = (request.getAttribute("nombre")).toString();
                } catch(Exception e){
                }*/
            if (user != null) { %>

            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    
                </div>

                <ul class="nav navbar-top-links navbar-right">

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">

                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Servidor actualizado
                                        <span class="pull-right text-muted small">Hace cuatro minutos</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Ver todas las notificaciones</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span><%=user%><i class="fa fa-user fa-fw"></i></span><i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="Modificar_perfil"><i class="fa fa-gear fa-fw"></i> Modificar perfil</a></li>
                            <li><a href="Logout"><i class="fa fa-sign-out fa-fw"></i> Cerrar sesión</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            
            <% } %>

            <div class="container">
                <div class="row">
                    <div class="logo"></i></div>
                    <div class="index">
                        <% if (user == null) { %>
                        <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Iniciar sesión</button>
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <form name="loginform" id="loginform" action="Inicio" method="POST">
                                    <div class="login-form">
                                        <div class="form-group log-status ">
                                            <input type="text" id="usuario" class="form-control" placeholder="Nombre de usuario" name="user" maxlength="255" required>
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <div class="form-group log-status">
                                            <input type="password" class="form-control" name="password" id="clave" placeholder="Contraseña" required>
                                            <i class="fa fa-lock"></i>
                                        </div>
                                        <div class="texto">
                                            <a class="link2" href="registro.php">¿No tienes cuenta?</a>
                                            <a class="link" href="#">¿Olvidaste tu contraseña?</a>
                                        </div>
                                        <button type="submit" value="Enviar" name="login" class="btn btn-primary log-btn" >Iniciar sesión</button>
                                        <button type="button" class="btn btn-danger cls-btn" data-dismiss="modal">Cerrar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    <% } else { %>
                        <a href="registro-user.jsp" class="btn btn-default">Usuarios </a>
                        <a href="registro-employee.jsp" class="btn btn-default">Empleados </a>
                        <a href="registro-inandout.jsp" class="btn btn-default">Entradas y salidas </a>
                        <a href="registro-charges.jsp" class="btn btn-default">Cargos </a>
                        <a href="registro-activitis.jsp" class="btn btn-default">Asignación de actividades </a>
                        <a href="registro-types.jsp" class="btn btn-default">Registro de actividades</a>
                        <a href="http://mega.co.nz/" class="btn btn-default">Descarga la aplicación de escritorio</a>
                    <% } %>
                    </div>
                </div>
            </div>
        </div>

        <script src="resources/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="resources/bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script src="resources/js/sb-admin-2.js"></script>
        <script src="resources/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
        <script src="resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
        <script src="resources/bower_components/datatables-responsive/js/dataTables.responsive.js"></script>
        <script src="resources/dist/js/sb-admin-2.js"></script>

    </body>

</html>