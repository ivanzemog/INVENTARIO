<%@ Page Title="BODEGA PLUS" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/proveedor.aspx.cs" Inherits="View_provedor" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ImageButton id="imagebutton" runat="server" ImageUrl="/Imagenes/lp.png" OnClick="ImageButton1_Click" Height="116px" Width="150px"/>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2">Provedores </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2"></td>
        </tr>
        <tr>
            <td>Cedula<asp:TextBox ID="TB_Cedula" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Cedula" ErrorMessage="*" ValidationGroup="validar" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_Cedula" runat="server" ControlToValidate="TB_Cedula" ErrorMessage="*" ForeColor="Red" ValidationGroup="validar" SetFocusOnError="True" ValidationExpression="^[0-9]{3,10}">Este campo sólo permite caracteres numéricos</asp:RegularExpressionValidator>
            </td>
            <td>Nombre<asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="validar" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" ForeColor="Red" ValidationGroup="validar" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]{3,30}">Este campo sólo permite caracteres alfabéticos</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Empresa<asp:TextBox ID="TB_Empresa" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_Empresa" ErrorMessage="*" ValidationGroup="validar" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_Nombre0" runat="server" ControlToValidate="TB_Empresa" ErrorMessage="*" ForeColor="Red" ValidationGroup="validar" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]{3,30}">Este campo sólo permite caracteres alfabéticos</asp:RegularExpressionValidator>
            </td>
            <td>Telefono<asp:TextBox ID="TB_Telefono" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ValidationGroup="validar" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="*" ForeColor="Red" ValidationGroup="validar" SetFocusOnError="True" ValidationExpression="^[0-9]{10}">Este campo sólo permite caracteres numéricos</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Guardar" ValidationGroup="validar" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODSProveedor" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None"  Width="90%" OnRowCommand="GridView1_RowCommand" DataKeyNames="Id,Nombre,Empresa,Telefono">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Cedula" SortExpression="Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre" SortExpression="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" ValidationGroup="valida"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]{3,30}" ValidationGroup="valida">Este campo sólo permite caracteres alfabéticos</asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Empresa" SortExpression="Empresa">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Empresa") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Empresa" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" ValidationGroup="valida"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_Empresa" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[A-Za-z ]{3,30}" ValidationGroup="valida">Este campo sólo permite caracteres alfabéticos</asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Empresa") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono" SortExpression="Telefono">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Telefono") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Telefono" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" ValidationGroup="valida"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10}" ValidationGroup="valida">Este campo sólo permite caracteres numéricos</asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Actualizar" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LB_Actualizar" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" ValidationGroup="valida"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODSProveedor" runat="server" DataObjectTypeName="EProveedor" SelectMethod="ObtenerProveedores" TypeName="DAOProveedor" UpdateMethod="actualizarproveedor">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

