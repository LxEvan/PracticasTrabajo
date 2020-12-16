<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormRegistro.aspx.cs" Inherits="FormularioRegistro1.FormRegistro" %>

<!DOCTYPE html>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="estilo.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<body style="text-align: -webkit-center; position: relative; top: 20px;">
    <form id="form1" runat="server">
        <h3><u>FORMULARIO DATOS</u></h3>
        <!-- Introduccion de datos para el registro-->
        <div>
            <table class="auto-style1">
                <tr class="spaceUnder">
                    <td>Nombre</td>
                    <td>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-user"></i></span>
                            <asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox>
                        </div>
                    </td>
                </tr>
                <tr class="spaceUnder">
                    <td>Apellido</td>
                    <td>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend1"><i class="fas fa-user"></i></span>
                            <asp:TextBox ID="TextBox2" runat="server" required="required"></asp:TextBox>
                        </div>
                    </td>
                </tr>
                <tr class="spaceUnder">
                    <td>Ciudad</td>
                    <td>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend2"><i class="fas fa-building"></i></span>
                            <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 51.1%">
                            </asp:DropDownList>
                        </div>
                    </td>
                </tr>
                <tr class="spaceUnder">
                    <td>Género</td>
                    <td>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend3"><i class="far fa-user"></i></span>
                            <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 51.1%">
                                <asp:ListItem Text="No especificar" Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Home" Value="Home"></asp:ListItem>
                                <asp:ListItem Text="Dona" Value="Dona"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </td>
                </tr>
                <tr class="spaceUnder">
                    <td>Usuario</td>
                    <td>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend4"><i class="fas fa-user"></i></span>
                            <asp:TextBox ID="TextBox3" runat="server" required="required"></asp:TextBox>
                        </div>
                    </td>
                </tr>
                <tr class="spaceUnder">
                    <td>Contraseña</td>
                    <td>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend5"><i class="fas fa-lock"></i></span>
                            <asp:TextBox ID="TextBox4" runat="server" required="required"></asp:TextBox>
                        </div>
                    </td>
                </tr>
                <tr class="spaceUnder">
                    <td>Email</td>
                    <td>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend6"><i class="fas fa-envelope"></i></span>
                            <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" required="required"></asp:TextBox>
                        </div>
                    </td>
                </tr>
                <tr class="spaceUnder">
                    <td>Telefon</td>
                    <td>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend7"><i class="fas fa-phone"></i></span>
                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Phone" MaxLength="9"></asp:TextBox>
                        </div>
                    </td>
                </tr>
                <tr class="spaceUnder">
                    <td>Pujada arxius</td>
                    <td>
                        <div class="input-group-prepend">
                            <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>

                        </div>
                    </td>                  
                </tr>
            </table>
            <div style="padding-top: 10px">
                <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" Text="Guardar" OnClick="Button_Click1" />
                <asp:Button ID="btnCancel" runat="server" class="btn btn-secondary btn-lg" Text="Volver sin guardar" OnClientClick="JavaScript:window.history.back(1); return false;" />
            </div>
        </div>
    </form>
</body>
</html>
