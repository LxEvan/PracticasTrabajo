<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormRegistro1.aspx.cs" Inherits="FormularioRegistro1.FormRegistro1" %>


<!DOCTYPE html>


<link rel="stylesheet" href="estilo.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body style="text-align: -webkit-center; position: relative; top: 20px;">
    <form id="form1" runat="server">
        <h3><u>FORMULARIO DATOS</u></h3>
        <!-- Introduccion de datos para el registro-->
        <div class="col-6">
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
                        <div class="input-group-prepend">
                            <asp:Label runat="server" ID="StatusLabel" Text="Upload status: " />
                        </div>
                    </td>
                </tr>
                <tr>
                    <div class="alert alert-danger" id="mensajer" role="alert" runat="server" style="display: none"></div>
                </tr>
            </table>
        </div>
        
        <div>
            <h1>IMAGENES SUBIDAS</h1>
            <div runat="server" id="ContenedorImagen"></div>
        </div>
        
        <div style="padding-top: 10px">
            <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" Text="Guardar" OnClick="Button_Click1" />
            <asp:Button ID="btnCancel" runat="server" class="btn btn-secondary btn-lg" Text="Volver sin guardar" OnClientClick="JavaScript:window.history.back(1); return false;" />
        </div>
        <br>
    </form>
    <script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
   
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

        <script>
        
            function borrarFotos(id_imagen) {                  
                console.log(id_imagen);
                //var fotoid = id_imagen;               
                //Se guardan los valores en data para pasarselos a la funcion de ajax, que permitira la consulta sql
                var data ='{id_imagen: ' + id_imagen + '}';
                
                //Se ejecuta ajax
                $.ajax({                   
                    url: "FormRegistro1.aspx/BorradorFotos", // Aqui se añade la direccion url que quieres que se ejecute  (Desde un archivo php, otro fichero html o el propio .cs de c#)
                    type: "POST", // Si se ejecuta alguna orden que modifique algo, en este caso un delete en la bd, se usa POST. Sino GET
                    data: data, // Toda la informacion que se quiera pasar a la url se pasara a traves de esta variable en concreto
                    contentType: "application/json; charset=utf-8", //
                    dataType: "json", //  
                    cache: false, //
                    success: function (data) { //Si todo funciona bien y esta todo correcto entrara en esta funcion y ejecutara el contenido de dentro            
                        alert(data.d); //
                        console.log('ok'); //                    
                        $('#tarjeta'+id_imagen+'').remove(); //Con el .remove() puedes quitar cualquier elemento del html introduciendo su id                        
                    },
                    error: function () {
                        alert(data.d);
                    }
                });
            }
        </script>
</body>
</html>
