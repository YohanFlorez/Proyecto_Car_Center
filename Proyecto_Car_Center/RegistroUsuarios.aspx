<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="Proyecto_Car_Center.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" style="font-size: x-large; font-weight: 700" Text="Registro Usuario"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Apellido" runat="server" Text="Apellido"></asp:Label>
        <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
        <br />
        <p>
            Numero de documento<asp:TextBox ID="Txtndocumento" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Tipo de documento"></asp:Label>
            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idTipoDoc">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoDocumento]"></asp:SqlDataSource>
        </p>
        <p>
            Telefono
            <asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Direccion"></asp:Label>
            &nbsp;<asp:TextBox ID="Txtdireccion" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Correo"></asp:Label>
            <asp:TextBox ID="Txtcorreo" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="Txtcontraseña" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Confirmar Contraseña"></asp:Label>
            <asp:TextBox ID="Txtcontrasena2" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
