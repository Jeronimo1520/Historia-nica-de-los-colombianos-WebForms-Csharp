<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCambiarRegimen.aspx.cs" Inherits="WebFormSistemaDeSalud.WebFormCambiarRegimen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 203px;
        }
        .auto-style3 {
            width: 173px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblCambiarRegimen" runat="server" Text="Cambiar Régimen:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblMensajeCambioRegimen" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lbl_IdCambioEps" runat="server" Text="*Identificación:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblRegimen" runat="server" Text="*Régimen:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownListRegimen" runat="server">
                            <asp:ListItem>Seleccione</asp:ListItem>
                            <asp:ListItem>Contributivo</asp:ListItem>
                            <asp:ListItem>Subsidiado</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnCambiarRegimen" runat="server" Text="Cambiar Régimen" OnClick="btnCambiarRegimen_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnMenu" runat="server" Text="Menu" OnClick="btnMenu_Click" style="height: 29px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

