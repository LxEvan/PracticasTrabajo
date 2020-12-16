<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listado.aspx.cs" Inherits="FormularioRegistro1.listado" %>

<!DOCTYPE html>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="estilo.css">
<script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js" type="text/javascript"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width"> 
    <title></title>

</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <h3><u>Buscador de datos usuario</u></h3>

        <div style="text-align: -webkit-center">   
            <div style="margin-top: 17px; margin-left: 5px;">
            <asp:TextBox ID="TextBox10" runat="server" placeholder="Buscar por ID" Style="border-radius: 5px; "></asp:TextBox>

            <asp:DropDownList ID="DropDownList1" runat="server" Style="border-radius: 5px; margin: 5px;">
            </asp:DropDownList>

            <asp:DropDownList ID="DropDownList2" runat="server" Style="border-radius: 5px;">
                <asp:ListItem Text="Todos los géneros" Value="%" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Sin especificar" Value=""></asp:ListItem>
                <asp:ListItem Text="Home" Value="Home"></asp:ListItem>
                <asp:ListItem Text="Dona" Value="Dona"></asp:ListItem>
            </asp:DropDownList>

            <asp:TextBox ID="TextBox20" runat="server" placeholder="Busqueda avanzada" Style="border-radius: 5px; margin-top: 7px; margin: 5px;"></asp:TextBox>

            <asp:Button ID="Button2" runat="server" Text="Buscar" class="btn btn-primary" Style="margin-bottom: 7px" OnClick="listarbd" />
            <br />
            <div class="alert alert-success" id="mensajev" role="alert" runat="server" style="display: none">
            </div>
            <div class="alert alert-danger" id="mensajer" role="alert" runat="server" style="display: none">
            </div>
        </div>

        <div class="card-body table-hover" style="text-align: -webkit-center; overflow-x: hidden;">
            <asp:GridView ID="GridView1" runat="server" CssClass="GridviewEstilo">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink
                                NavigateUrl='<%# "~/FormRegistro1.aspx?id=" + HttpUtility.UrlEncode(DataBinder.Eval(Container, "DataItem.Id").ToString()) %>'
                                runat="server"
                                Text="Modificar" />                           
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div>
            <br />
            <asp:Button ID="Button3" runat="server" PostBackUrl="FormRegistro1.aspx" class="btn btn-primary btn-lg" Text="Nuevo Registro"></asp:Button>
            <asp:Button ID="Button4" runat="server" Text="Recargar tabla" class="btn btn-secondary btn-lg" OnClick="RecargaTabla"></asp:Button>
        </div>
    </form>
    <script>
        $(document).ready(function () {
            $('#GridView1').DataTable({
                "searching": false,  "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
                }                             
            });
        });
    </script>
</body>
</html>
