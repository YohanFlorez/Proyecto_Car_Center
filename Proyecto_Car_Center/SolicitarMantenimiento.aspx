<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitarMantenimiento.aspx.cs" Inherits="Proyecto_Car_Center.SolicitarMantenimiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: x-large" Text="Solicitar Mantenimiento"></asp:Label>
        </div>
        <p>
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/MenuUsuario.aspx" Text="Menu" Value="Menu">
                    <asp:MenuItem NavigateUrl="~/SolicitarMantenimiento.aspx" Text="Solicitar Mantenimiento" Value="Solicitar Mantenimiento"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ModificarPerfil.aspx" Text="Modificar Datos personales" Value="Modificar Datos personales"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ModificarClave.aspx" Text="Cambiar Contraseña" Value="Cambiar Contraseña"></asp:MenuItem>

                    
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;<asp:Label ID="Label3" runat="server" Text="Marca del vehiculo"></asp:Label>
            <asp:TextBox ID="TxtMarca" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;<asp:Label ID="Label4" runat="server" Text="Modelo"></asp:Label>
            <asp:TextBox ID="TxtModelo" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;<asp:Label ID="Label5" runat="server" Text="Descripcion del mantenimiento"></asp:Label>
            <asp:TextBox ID="TxtDescripcion" runat="server" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p>
            <asp:Image ID="Image1" runat="server" Height="167px" Width="204px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar" OnClick="BtnRegistrar_Click" />
    </form>
</body>
</html>
