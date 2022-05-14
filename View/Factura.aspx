<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Factura.aspx.cs" Inherits="View_Factura" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

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
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Factura:
                        <asp:TextBox ID="TB_BuscaFactura" runat="server"></asp:TextBox>
&nbsp;
                        <asp:Button ID="B_Generar" runat="server" OnClick="B_Generar_Click" Text="Generar" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <CR:CrystalReportViewer ID="CRV_Factura" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ReportSourceID="CRS_Factura" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" />
                        <CR:CrystalReportSource ID="CRS_Factura" runat="server">
                            <Report FileName="C:\Users\Luis Alejandro\Music\INVENTARIO\Resportes\Factura.rpt">
                            </Report>
                        </CR:CrystalReportSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
