<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormActualizarHistoria_costos.aspx.cs" Inherits="WebFormSistemaDeSalud.WebFormActualizarHistoria_costos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 203px;
        }
        .auto-style5 {
            width: 203px;
            height: 52px;
        }
        .auto-style6 {
            height: 52px;
        }
        .auto-style7 {
            width: 233px;
            height: 52px;
        }
        .auto-style8 {
            width: 233px;
        }
        .auto-style9 {
            width: 233px;
            height: 26px;
        }
        .auto-style10 {
            width: 203px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            margin-right: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lblCambiarRegimen" runat="server" Text="Cambiar Historia clinica y costos:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblMensajeCambiarHistoria_costos" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="lbl_IdCambioHistoria" runat="server" Text="*Identificación:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="lblRegimen" runat="server" Text="Nueva Historia:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtNuevaHistoria" runat="server" Height="124px" TextMode="MultiLine" Width="287px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnCambiarHistoria" runat="server" Text="Cambiar Historia" CssClass="auto-style12" Height="33px" Width="140px" OnClick="btnCambiarHistoria_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                    </td>
                    <td class="auto-style10">
                    </td>
                    <td class="auto-style11">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label1" runat="server" Text="Nuevos Costos:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtNuevosCostos" runat="server" Height="27px" TextMode="Number" Width="175px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnCambiarCostos" runat="server" Text="Cambiar Costos" OnClick="btnCambiarCostos_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnMenu" runat="server" OnClick="btnMenu_Click" Text="Menu" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
