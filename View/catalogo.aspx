<%@ Page Title="BODEGA PLUS" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/catalogo.aspx.cs" Inherits="View_catalogo" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../App_Themes/webSalud/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/Estilosmaster.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/templatemo-medic-care.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 88px;
        width: 869px;
    }
    .auto-style2 {
        width: 131px;
    }
    .auto-style3 {
        width: 198px;
    }
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ImageButton id="imagebutton" runat="server" ImageUrl="/Imagenes/lp.png" OnClick="ImageButton1_Click" Height="116px" Width="150px"/> 
 <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center">catalogo</td>
            </tr>
            <tr>
                <td class="text-start">nombre</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_objeto" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>precio</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_decripcion" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>imagen</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>cantidad</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Visualizar" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Insertar" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Eliminar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:GridView ID="grilla" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
</asp:Content>


