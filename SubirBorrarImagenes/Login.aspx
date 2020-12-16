<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FormularioRegistro1.Login" %>

<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login </title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">
    <html xmlns="http://www.w3.org/1999/xhtml">
    
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
   
    <link href="signin.css" rel="stylesheet">
</head>
<body class="text-center">
    <form class="form-signin" runat="server">
        
        <h1 class="h3 mb-3 font-weight-normal">Login</h1>
        <label for="Usuario" class="sr-only">Usuario</label>
        <asp:TextBox ID="TextBox1" class="form-control" placeholder="Usuario" runat="server"></asp:TextBox>
        <label for="Contraseña" class="sr-only">Contraseña</label>
        <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" class="btn btn-lg btn-primary btn-block" runat="server" Text="Acceder" OnClick="Button1_Click"></asp:Button>
        <div>
            <br />
            <div class="alert alert-danger" id="mensajer" role="alert" runat="server" style="display: none"></div>
        </div>
        <p class="mt-5 mb-3 text-muted">2020 &copy; Quatuor</p>
    </form>
</body>
</html>
