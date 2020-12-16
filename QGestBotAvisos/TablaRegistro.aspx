﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaRegistro.aspx.cs" Inherits="QGestBotAvisos.TablaRegistro" %>

<!DOCTYPE html>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js" type="text/javascript"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
        <p class="navbar-brand col-sm-3 col-md-2 mr-0" style="margin-top: 11px;">Gestor Q_Simpatico</p>
        <p class="navbar-brand col-sm-3 col-md-2 mr-0" style="margin-top: 10px;">
            <img src="Images/logomobi.png" />
        </p>
        <ul class="navbar-nav px-3">
            <li class="nav-item text-nowrap">
                <a class="nav-link" href="#"></a>
            </li>
        </ul>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar" id="menu">
                <div class="sidebar-sticky" style="margin-top: 10px;">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home">
                                    <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                                Registro Mensajes <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="TablaMonitorizacion.aspx">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart-2">
                                    <line x1="18" y1="20" x2="18" y2="10"></line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg>
                                Monitorización
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="TablaDestinatarios.aspx">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users">
                                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                                Destinatarios
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="col-10" runat="server">

                <h1 class="text-center display-4" style="margin-top: 10px;">Mensajes - Tabla</h1>
                <form id="form1" runat="server">
                    <div class="form-group col-2">
                        <label for="fecha">Fecha</label>
                        <asp:TextBox ID="TextBoxStartDate" AutoPostBack="false" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="form-group col-2">
                        <label for="hora">Hora</label>
                        <asp:TextBox ID="TextBoxStartHour" class="form-control" runat="server" TextMode="Time"></asp:TextBox>
                    </div>
                    <div class="alert alert-danger" id="mensajer" role="alert" runat="server" style="display: none">
                    </div>
                    <div class="form-group col-2">
                        <asp:Button ID="Button2" type="button" text="Buscar por fecha" class="btn btn-primary" runat="server" OnClick="Button2_Click"></asp:Button>
                    </div>
                    <div class="card-body table-hover" style="text-align: -webkit-center; overflow-x: hidden;">
                        <asp:GridView ID="GridView1" runat="server">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:HyperLink
                                            NavigateUrl='<%# "~/Registro.aspx?id=" + HttpUtility.UrlEncode(DataBinder.Eval(Container, "DataItem.ID_Aviso").ToString()) %>'
                                            runat="server"
                                            Text="Modificar" />
                                        |
                                        <asp:HyperLink
                                            NavigateUrl='<%# "~/BorrarRegistro.aspx?id=" + HttpUtility.UrlEncode(DataBinder.Eval(Container, "DataItem.ID_Aviso").ToString()) %>'
                                            runat="server"
                                            Text="Eliminar" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div class="col text-center">
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Añadir Registro" OnClick="Button_Click1" />
                        <asp:Button ID="Button3" class="btn btn-secondary" runat="server" Text="Recargar Pagina" OnClick="Button_Click2" />
                    </div>
                </form>
            </div>
            <script>
                $(document).ready(function () {
                    $('#GridView1').DataTable({
                        "language": {
                            "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
                        }
                    });
                    alturaMenu();
                });

                $(window).resize(function () {
                    alturaMenu();
                });

                function alturaMenu() {
                    $("#menu").css("min-height", ($(window).height() - 70) + "px");
                }

            </script>
</body>
</html>
