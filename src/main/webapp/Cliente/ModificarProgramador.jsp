<%@page import="java.util.Objects"%>
<%@page import="BEANS.Cliente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Nuevo Proyecto</title>
    </head>
    <%
        Trabajador trb = (Trabajador) request.getSession().getAttribute("usu");
    %>
    <body class="position-relative">
        <%@include file="../Partes/Menu.jspf" %>
        <div id="proyectoN" class="col-md-8 order-md-1 w-50">
            <h1 class="mb-3 text-center">Modificacion de Perfil</h1>
            <hr class="mb-4">
            <form class="needs-validation" novalidate="" method="post" action="TrabajadorServlet?Dato=5">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Codigo: </label>
                        <input type="text" class="form-control" name="cod" value="<%=trb.getId()%>">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>DNI</label>
                        <input type="text" class="form-control" name="dni" value="<%=trb.getDNI()%>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Nombres:  </label>
                        <input type="text" class="form-control" name="nom" value="<%=trb.getNombre()%>">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Apellidos: </label>
                        <input type="text" class="form-control" name="ape" value="<%=trb.getApellidos()%>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Telefono: </label>
                        <input type="text" class="form-control" name="tel" value="<%=trb.getTelefono()%>">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Correo: </label>
                        <input type="email" class="form-control" name="cor" value="<%=trb.getCorreo()%>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Tipo</label>
                        <div class="d-flex">
                            <div class="custom-control custom-radio m-2">
                                <input name="tip" value="P" type="radio" class="custom-control-input" <%=Objects.equals(trb.getTipo(), "P") ? "checked" : ""%>>
                                <label class="custom-control-label" for="credit">Programador</label>
                            </div>
                            <div class="custom-control custom-radio m-2">
                                <input name="tip" value="A" type="radio" class="custom-control-input" <%=Objects.equals(trb.getTipo(), "A") ? "checked" : ""%>>
                                <label class="custom-control-label" for="debit">Administrador</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Estado</label>
                        <div class="d-flex">
                            <div class="custom-control custom-radio m-2">
                                <input name="est" value="N" type="radio" class="custom-control-input" <%=Objects.equals(trb.getSituacion(), "N") ? "checked" : ""%>>
                                <label class="custom-control-label" for="credit">Nuevo</label>
                            </div>
                            <div class="custom-control custom-radio m-2">
                                <input name="est" value="A" type="radio" class="custom-control-input" <%=Objects.equals(trb.getSituacion(), "A") ? "checked" : ""%>>
                                <label class="custom-control-label" for="debit">Antiguo</label>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="mb-4">
                <div class="d-flex">
                    <div class="col-md-6">
                        <button class="btn btn-primary btn-lg btn-block" type="submit">Modificar</button>
                    </div>
                    <div class="col-md-6">
                        <a href="ProyectoServlet?Dato=2" class="btn btn-danger btn-lg btn-block">Regresar</a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
