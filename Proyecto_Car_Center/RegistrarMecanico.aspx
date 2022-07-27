<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarMecanico.aspx.cs" Inherits="Proyecto_Car_Center.RegistrarMecanico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label7" runat="server" style="font-weight: 700; font-size: x-large" Text="Registrar Mecanico"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="font-size: large">Cerrar Sesion</asp:LinkButton>
            <br />
            <br />
            <br />
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/MenuAdministrador.aspx" Text="Menu" Value="Menu">
                    <asp:MenuItem NavigateUrl="~/RegistrarMecanico.aspx" Text="Registrar Mecanico" Value="Registrar Mecanico"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RegistrarRepuesto.aspx" Text="Registrar Repuesto" Value="Registrar Repuesto"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/GestionUsuarios.aspx" Text="Gestion Usuarios" Value="Gestion Usuarios"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ModificarMecanico.aspx" Text="Modificar Mecanico" Value="Modificar Mecanico"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ModificarRepuesto.aspx" Text="Modificar Repuesto" Value="Modificar Repuesto"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/EliminarMecanico.aspx" Text="Eliminar Mecanico" Value="Eliminar Mecanico"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/EliminarRepuesto.aspx" Text="Eliminar Repuesto" Value="Eliminar Repuesto"></asp:MenuItem>
                      <asp:MenuItem NavigateUrl="~/RegistroRepuestosUsados.aspx" Text="Registro Venta Repuestos" Value=" Registro Venta Repuestos"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/VerSolicitudes.aspx" Text="Ver solicitudes" Value="Ver Solicitudes"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Primer Nombre"></asp:Label>
            <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Segundo Nombre"></asp:Label>
            <asp:TextBox ID="TxtNombre0" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Apellido" runat="server" Text="Primer Apellido"></asp:Label>
            <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Apellido0" runat="server" Text="Segundo Apellido"></asp:Label>
            <asp:TextBox ID="TxtSegundoApellido" runat="server" Height="22px" OnTextChanged="Txtndocumento_TextChanged"></asp:TextBox>
            <br />
            <br />
            <p>
                <asp:Label ID="Apellido1" runat="server" Text="Numero Documento"></asp:Label>
                <asp:TextBox ID="Txtndocumento" runat="server" Height="22px" OnTextChanged="Txtndocumento_TextChanged"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="Tipo de documento"></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idTipoDoc">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoDocumento]"></asp:SqlDataSource>
            </p>
            <p>
                Telefono <asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Direccion"></asp:Label>
                &nbsp;<asp:TextBox ID="Txtdireccion" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;<asp:Button ID="BtnRegistrar" runat="server" OnClick="BtnRegistrar_Click" style="width: 78px" Text="Registrar" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
