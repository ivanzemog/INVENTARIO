<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Verificacion.aspx.cs" Inherits="View_Verificacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row my-5">
        <div class="col-5">
            <input type="text" runat="server" id="I_Codigo" class="form-control" />
        </div>
        <div class="col-5">
            <input type="button" runat="server" id="confirmar" onserverclick="confirmar_ServerClick" value="Confirmar" class="btn btn-success"/>
        </div>
        <div class="col">
            <a id="nuevoCod" runat="server" onserverclick="nuevoCod_ServerClick">Generar nuevo codigo</a>
        </div>
    </div>
</asp:Content>

