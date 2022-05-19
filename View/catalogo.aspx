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
            width: 249px;
        }
        .auto-style2 {
            width: 249px;
            height: 21px;
            text-align: center;
        }
        .auto-style3 {
            height: 21px;
        }
        .auto-style4 {
            width: 249px;
            text-align: center;
        }
        .auto-style5 {
            width: 188px;
        }
        .auto-style6 {
            height: 21px;
            width: 188px;
        }
        .auto-style7 {
            width: 188px;
            text-align: center;
        }
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ImageButton id="imagebutton" runat="server" ImageUrl="/Imagenes/lp.png" OnClick="ImageButton1_Click" Height="116px" Width="150px"/> 
    <div class="row">

        

        <table align="center" class="w-100">
            <tr>
                <td class="text-center" colspan="3">CATALOGO</td>
            </tr>
            <tr>
                <td class="auto-style4">nombre</td>
                <td class="auto-style5">
                    <asp:TextBox ID="nombrep" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:GridView ID="gvproducto" runat="server" DataSourceID="ObjectDataSource1">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">precio </td>
                <td class="auto-style5">
                    <asp:TextBox ID="preciop" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OnSelecting="ObjectDataSource1_Selecting"></asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">cantidad</td>
                <td class="auto-style6">
                    <asp:TextBox ID="cantidadp" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">imagen</td>
                <td class="auto-style6">
                    <asp:TextBox ID="imagenp" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="mostar" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" Text="insertar" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server" Text="modificar" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button4" runat="server" Text="eliminar" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        

    </div>

</asp:Content>


