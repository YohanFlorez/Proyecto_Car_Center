<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionUsuarios.aspx.cs" Inherits="Proyecto_Car_Center.GestionUsuarios" %>

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
        <asp:Label ID="Label1" runat="server" style="font-size: x-large; font-weight: 700" Text="Gestion Usuarios"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="font-size: large">Cerrar Sesion</asp:LinkButton>
&nbsp;<p>
            &nbsp;</p>
        <p>
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/Index.aspx" Text="Menu" Value="Menu">
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
        </p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Ndocumento" HeaderText="Ndocumento" SortExpression="Ndocumento" />
                <asp:BoundField DataField="TipoDocumento" HeaderText="TipoDocumento" SortExpression="TipoDocumento" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:BoundField DataField="Contrasena" HeaderText="Contrasena" SortExpression="Contrasena" />
                <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol" />
                <asp:CheckBoxField DataField="Disponible" HeaderText="Disponible" SortExpression="Disponible" />
                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" InsertVisible="False" ReadOnly="True" SortExpression="IdUsuario" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @original_IdUsuario AND [Nombre] = @original_Nombre AND [Apellido] = @original_Apellido AND [Ndocumento] = @original_Ndocumento AND [TipoDocumento] = @original_TipoDocumento AND [Direccion] = @original_Direccion AND [Correo] = @original_Correo AND [Contrasena] = @original_Contrasena AND [Rol] = @original_Rol AND [Disponible] = @original_Disponible" InsertCommand="INSERT INTO [Usuario] ([Nombre], [Apellido], [Ndocumento], [TipoDocumento], [Direccion], [Correo], [Contrasena], [Rol], [Disponible]) VALUES (@Nombre, @Apellido, @Ndocumento, @TipoDocumento, @Direccion, @Correo, @Contrasena, @Rol, @Disponible)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Nombre], [Apellido], [Ndocumento], [TipoDocumento], [Direccion], [Correo], [Contrasena], [Rol], [Disponible], [IdUsuario] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Ndocumento] = @Ndocumento, [TipoDocumento] = @TipoDocumento, [Direccion] = @Direccion, [Correo] = @Correo, [Contrasena] = @Contrasena, [Rol] = @Rol, [Disponible] = @Disponible WHERE [IdUsuario] = @original_IdUsuario AND [Nombre] = @original_Nombre AND [Apellido] = @original_Apellido AND [Ndocumento] = @original_Ndocumento AND [TipoDocumento] = @original_TipoDocumento AND [Direccion] = @original_Direccion AND [Correo] = @original_Correo AND [Contrasena] = @original_Contrasena AND [Rol] = @original_Rol AND [Disponible] = @original_Disponible">
            <DeleteParameters>
                <asp:Parameter Name="original_IdUsuario" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Apellido" Type="String" />
                <asp:Parameter Name="original_Ndocumento" Type="String" />
                <asp:Parameter Name="original_TipoDocumento" Type="Int32" />
                <asp:Parameter Name="original_Direccion" Type="String" />
                <asp:Parameter Name="original_Correo" Type="String" />
                <asp:Parameter Name="original_Contrasena" Type="String" />
                <asp:Parameter Name="original_Rol" Type="Int32" />
                <asp:Parameter Name="original_Disponible" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="Ndocumento" Type="String" />
                <asp:Parameter Name="TipoDocumento" Type="Int32" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="Contrasena" Type="String" />
                <asp:Parameter Name="Rol" Type="Int32" />
                <asp:Parameter Name="Disponible" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="Ndocumento" Type="String" />
                <asp:Parameter Name="TipoDocumento" Type="Int32" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="Contrasena" Type="String" />
                <asp:Parameter Name="Rol" Type="Int32" />
                <asp:Parameter Name="Disponible" Type="Boolean" />
                <asp:Parameter Name="original_IdUsuario" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Apellido" Type="String" />
                <asp:Parameter Name="original_Ndocumento" Type="String" />
                <asp:Parameter Name="original_TipoDocumento" Type="Int32" />
                <asp:Parameter Name="original_Direccion" Type="String" />
                <asp:Parameter Name="original_Correo" Type="String" />
                <asp:Parameter Name="original_Contrasena" Type="String" />
                <asp:Parameter Name="original_Rol" Type="Int32" />
                <asp:Parameter Name="original_Disponible" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
