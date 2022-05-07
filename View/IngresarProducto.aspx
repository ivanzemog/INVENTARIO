<%@ Page Title="BODEGA PLUS" Language="C#"  CodeFile="~/Controller/IngresarProducto.aspx.cs" Inherits="View_IngresarProducto" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>AGREGAR PRODUCTOS</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Nombre del Producto:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" ValidationGroup="VG_Producto"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="L_Cantidad" runat="server" Text="Cantidad"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TB_Cantidad" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_Cantidad" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" ValidationGroup="VG_Producto"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="REV_Cantidad" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="Entre 2 y 3 Digitos" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{2,3}" ValidationGroup="VG_Producto"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">
                        <asp:Label ID="L_Precio" runat="server" Text="Precio:"></asp:Label>
                    </td>
                    <td rowspan="2">
                        <asp:TextBox ID="TB_Precio" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFV_Precio" runat="server" ControlToValidate="TB_Precio" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" ValidationGroup="VG_Producto"></asp:RequiredFieldValidator>
                    </td>
                    <td rowspan="2">Imagen</td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="FU_Producto" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="I_Producto" runat="server" Width="20%" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">
                        <asp:Button ID="B_Guardar" runat="server" Text="Guardar" OnClick="B_Guardar_Click" ValidationGroup="VG_Producto" />
                        <asp:Button ID="B_Catalogo" runat="server" OnClick="B_Catalogo_Click" Text="Catalogo" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
