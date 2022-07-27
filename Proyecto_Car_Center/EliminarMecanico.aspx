<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarMecanico.aspx.cs" Inherits="Proyecto_Car_Center.EliminarMecanico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Eliminar Mecanico&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            </strong>
        </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idMecanico" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="idMecanico" HeaderText="idMecanico" InsertVisible="False" ReadOnly="True" SortExpression="idMecanico" />
                <asp:BoundField DataField="PrimerNombre" HeaderText="PrimerNombre" SortExpression="PrimerNombre" />
                <asp:BoundField DataField="SegundoNombre" HeaderText="SegundoNombre" SortExpression="SegundoNombre" />
                <asp:BoundField DataField="PrimerApellido" HeaderText="PrimerApellido" SortExpression="PrimerApellido" />
                <asp:BoundField DataField="SegundoApellido" HeaderText="SegundoApellido" SortExpression="SegundoApellido" />
                <asp:BoundField DataField="NDocumento" HeaderText="NDocumento" SortExpression="NDocumento" />
                <asp:BoundField DataField="TipoDocumento" HeaderText="TipoDocumento" SortExpression="TipoDocumento" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:CheckBoxField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Mecanico] WHERE [idMecanico] = @original_idMecanico AND [PrimerNombre] = @original_PrimerNombre AND [SegundoNombre] = @original_SegundoNombre AND [PrimerApellido] = @original_PrimerApellido AND [SegundoApellido] = @original_SegundoApellido AND [NDocumento] = @original_NDocumento AND [TipoDocumento] = @original_TipoDocumento AND [Telefono] = @original_Telefono AND [Direccion] = @original_Direccion AND [Estado] = @original_Estado" InsertCommand="INSERT INTO [Mecanico] ([PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [NDocumento], [TipoDocumento], [Telefono], [Direccion], [Estado]) VALUES (@PrimerNombre, @SegundoNombre, @PrimerApellido, @SegundoApellido, @NDocumento, @TipoDocumento, @Telefono, @Direccion, @Estado)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Mecanico]" UpdateCommand="UPDATE [Mecanico] SET [PrimerNombre] = @PrimerNombre, [SegundoNombre] = @SegundoNombre, [PrimerApellido] = @PrimerApellido, [SegundoApellido] = @SegundoApellido, [NDocumento] = @NDocumento, [TipoDocumento] = @TipoDocumento, [Telefono] = @Telefono, [Direccion] = @Direccion, [Estado] = @Estado WHERE [idMecanico] = @original_idMecanico AND [PrimerNombre] = @original_PrimerNombre AND [SegundoNombre] = @original_SegundoNombre AND [PrimerApellido] = @original_PrimerApellido AND [SegundoApellido] = @original_SegundoApellido AND [NDocumento] = @original_NDocumento AND [TipoDocumento] = @original_TipoDocumento AND [Telefono] = @original_Telefono AND [Direccion] = @original_Direccion AND [Estado] = @original_Estado">
            <DeleteParameters>
                <asp:Parameter Name="original_idMecanico" Type="Int32" />
                <asp:Parameter Name="original_PrimerNombre" Type="String" />
                <asp:Parameter Name="original_SegundoNombre" Type="String" />
                <asp:Parameter Name="original_PrimerApellido" Type="String" />
                <asp:Parameter Name="original_SegundoApellido" Type="String" />
                <asp:Parameter Name="original_NDocumento" Type="String" />
                <asp:Parameter Name="original_TipoDocumento" Type="Int32" />
                <asp:Parameter Name="original_Telefono" Type="String" />
                <asp:Parameter Name="original_Direccion" Type="String" />
                <asp:Parameter Name="original_Estado" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PrimerNombre" Type="String" />
                <asp:Parameter Name="SegundoNombre" Type="String" />
                <asp:Parameter Name="PrimerApellido" Type="String" />
                <asp:Parameter Name="SegundoApellido" Type="String" />
                <asp:Parameter Name="NDocumento" Type="String" />
                <asp:Parameter Name="TipoDocumento" Type="Int32" />
                <asp:Parameter Name="Telefono" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Estado" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PrimerNombre" Type="String" />
                <asp:Parameter Name="SegundoNombre" Type="String" />
                <asp:Parameter Name="PrimerApellido" Type="String" />
                <asp:Parameter Name="SegundoApellido" Type="String" />
                <asp:Parameter Name="NDocumento" Type="String" />
                <asp:Parameter Name="TipoDocumento" Type="Int32" />
                <asp:Parameter Name="Telefono" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="Estado" Type="Boolean" />
                <asp:Parameter Name="original_idMecanico" Type="Int32" />
                <asp:Parameter Name="original_PrimerNombre" Type="String" />
                <asp:Parameter Name="original_SegundoNombre" Type="String" />
                <asp:Parameter Name="original_PrimerApellido" Type="String" />
                <asp:Parameter Name="original_SegundoApellido" Type="String" />
                <asp:Parameter Name="original_NDocumento" Type="String" />
                <asp:Parameter Name="original_TipoDocumento" Type="Int32" />
                <asp:Parameter Name="original_Telefono" Type="String" />
                <asp:Parameter Name="original_Direccion" Type="String" />
                <asp:Parameter Name="original_Estado" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
