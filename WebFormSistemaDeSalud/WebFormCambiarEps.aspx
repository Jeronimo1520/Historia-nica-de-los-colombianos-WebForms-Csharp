<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCambiarEps.aspx.cs" Inherits="WebFormSistemaDeSalud.WebFormCambiarEps" %>

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
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblMensajeCambiarEps" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblCambiarEps" runat="server" Text="Cambiar Eps:"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lbl_IdCambioEps" runat="server" Text="*Identificacion:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblEps" runat="server" Text="*Eps:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownListCambioEps" runat="server">
                            <asp:ListItem>Seleccione</asp:ListItem>
                            <asp:ListItem Value="Sura">Sura</asp:ListItem>
                            <asp:ListItem Value="Nueva Eps">Nueva Eps</asp:ListItem>
                            <asp:ListItem>Salud total</asp:ListItem>
                            <asp:ListItem>Sanitas</asp:ListItem>
                            <asp:ListItem>Savia</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnCambiarEps" runat="server" Text="Cambiar Eps" OnClick="btnCambiarEps_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnMenu" runat="server" Text="Menu" OnClick="btnMenu_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
