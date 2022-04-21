<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuSistemaDeSalud.aspx.cs" Inherits="WebFormSistemaDeSalud.MenuSistemaDeSalud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            height: 27px;
            width: 361px;
        }
        .auto-style3 {
            width: 361px;
        }
        .auto-style6 {
            width: 361px;
            height: 39px;
        }
        .auto-style8 {
            height: 39px;
        }
        .auto-style9 {
            width: 100%;
            height: 262px;
        }
        .auto-style13 {
            width: 361px;
            height: 217px;
        }
        .auto-style15 {
            height: 217px;
        }
        .auto-style16 {
            height: 27px;
            width: 330px;
        }
        .auto-style17 {
            width: 330px;
        }
        .auto-style18 {
            width: 330px;
            height: 39px;
        }
        .auto-style19 {
            width: 330px;
            height: 217px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style16">
                        <asp:Label ID="lblBienvenida" runat="server" Text="Bienvenid@ !"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="lblIngresarOpcion" runat="server" Text="Elige una opcion:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="lblRegistrarUsuario" runat="server" Text="Registrar usuario:"></asp:Label>
&nbsp;&nbsp; </td>
                    <td>
                        <asp:Button ID="btnRegistrarUsuario" runat="server" Height="27px" OnClick="btnRegistrarUsuario_Click" Text="Elegir" Width="94px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="lblCambiarEps" runat="server" Text="Cambiar EPS:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:Button ID="btnCambiarEps" runat="server" Text="Elegir" Width="93px" OnClick="btnCambiarEps_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style18">
                        <asp:Label ID="lblCambiarRegimen" runat="server" Text="Cambiar Régimen:"></asp:Label>
&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btnCambiarRegimen" runat="server" Text="Elegir" Width="96px" OnClick="btnCambiarRegimen_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Label ID="lblActualizarDatos" runat="server" Text="Actualizar Historia clinica y costos:"></asp:Label>
&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btnActualizacion" runat="server" Text="Elegir" Width="95px" OnClick="btnActualizacion_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Label ID="Label1" runat="server" Text="Estadisticas"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="btnEstadisticas" runat="server" OnClick="btnEstadisticas_Click" Text="Mostrar" Width="94px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtEstadisticas" runat="server" Height="413px" ReadOnly="True" TextMode="MultiLine" Visible="False" Width="389px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
