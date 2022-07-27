<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto_Car_Center.RegistroUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: x-large" Text="Login"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Correo:"></asp:Label>
            <asp:TextBox ID="TxtCorreo" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Contraseña:"></asp:Label>
            <asp:TextBox ID="TxtClave" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="BtnIniciarSesion" runat="server" OnClick="BtnRegistrar_Click" Text="Iniciar Sesion" />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Crear Cuenta</asp:LinkButton>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
