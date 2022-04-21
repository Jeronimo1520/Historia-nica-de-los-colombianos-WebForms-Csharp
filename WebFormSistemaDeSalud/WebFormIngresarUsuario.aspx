<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormIngresarUsuario.aspx.cs" Inherits="WebFormSistemaDeSalud.WebFormIngresarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 451px;
        }
        .auto-style2 {
            width: 411px;
        }
        .auto-style3 {
            width: 451px;
            height: 25px;
        }
        .auto-style4 {
            width: 411px;
            height: 25px;
        }
        .auto-style5 {
            width: 451px;
            height: 41px;
        }
        .auto-style6 {
            width: 411px;
            height: 41px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 451px;
            height: 26px;
        }
        .auto-style9 {
            width: 411px;
            height: 26px;
        }
        .auto-style10 {
            width: 451px;
            height: 34px;
        }
        .auto-style11 {
            width: 411px;
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblBienvenida" runat="server" Text="Bienvenid@!"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblMensajesRegistroUsuario" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblIngresarUsuario" runat="server" Text="Ingresar Usuario:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblNombre" runat="server" Text="*Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td rowspan="15">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblApellidos" runat="server" Text="*Apellidos"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_Id" runat="server" Text="*Identificación"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtIdentificacion" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblFechaNacimiento" runat="server" Text="* Fecha de nacimiento"></asp:Label>
&nbsp;<asp:TextBox ID="txtFechaNacimiento" runat="server" ReadOnly="True"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl ="~/fecha-limite.png" Height="38px" Width="45px"
                            ImageAlign ="AbsBottom" OnClick ="ImageButton1_Click"/>
                        <asp:Calendar ID="calendarioFechaNacimiento" runat="server" Height="200px" Width="220px" 
                            OnSelectionChanged="calendarioFechaNacimiento_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" CellPadding="1">
                            <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblRegimen" runat="server" Text="*Régimen"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownListRegimen" runat="server" Width="108px">
                            <asp:ListItem>Seleccione</asp:ListItem>
                            <asp:ListItem>Contributivo</asp:ListItem>
                            <asp:ListItem>Subsidiado</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblSemanasCotizadas" runat="server" Text="*Semanas Cotizadas"></asp:Label>
                    &nbsp;
                        <asp:TextBox ID="txtSemanasCotizadas" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblFechaIngresoSalud" runat="server" Text="*Fecha ingreso al sistema de salud"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtFechaIngresoSalud" runat="server" Width="118px" ReadOnly="True"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl ="~/fecha-limite.png" Height="38px" Width="45px"
                            ImageAlign ="AbsBottom" OnClick="ImageButton2_Click" />
                        <asp:Calendar ID="calendarioFechaIngresoSalud" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="calendarioFechaIngresoSalud_SelectionChanged" CellPadding="1">
                            <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="lblFechaIngresoEps" runat="server" Text="*Fecha ingreso Eps"></asp:Label>
                        <asp:TextBox ID="txtFechaIngresoEps" runat="server" ReadOnly="True"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl ="~/fecha-limite.png" Height="38px" Width="45px"
                            ImageAlign ="AbsBottom" OnClick="ImageButton3_Click" />
                        <asp:Calendar ID="calendarioFechaIngresoEps" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="calendarioFechaIngresoEps_SelectionChanged" CellPadding="1">
                            <DayHeaderStyle BackColor="#99CCCC" Height="1px" ForeColor="#336666" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" BorderColor="#3366CC" BorderWidth="1px" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblEps" runat="server" Text="*Eps"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownListEps" runat="server">
                            <asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>
                            <asp:ListItem Value="Sura">Sura</asp:ListItem>
                            <asp:ListItem Value="Nueva Eps">Nueva Eps</asp:ListItem>
                            <asp:ListItem Value="Salud Total">Salud total</asp:ListItem>
                            <asp:ListItem Value="Sanitas">Sanitas</asp:ListItem>
                            <asp:ListItem Value="Savia">Savia</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblHistoriaClinica" runat="server" Text="*Historia Clínica"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtHistoria" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="*Cantidad Enfermedades"></asp:Label>
&nbsp;<asp:TextBox ID="txtCantidadEnfermedades" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblEnfermedadRelevante" runat="server" Text="Enfermedad relevante"></asp:Label>
&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEnfermedadRelevante" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="*Afiliación"></asp:Label>
&nbsp;
                        <asp:DropDownList ID="DropDownListAfiliacion" runat="server">
                            <asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>
                            <asp:ListItem Value="Cotizante">Cotizante</asp:ListItem>
                            <asp:ListItem Value="Beneficiario">Beneficiario</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblCostos" runat="server" Text="*Costos de tratamiento"></asp:Label>
&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtCostos" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnRegistrarPaciente" runat="server" Text="Registrar" Width="125px" OnClick="btnRegistrarPaciente_Click"  />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnVolver_a_menu" runat="server" OnClick="btnVolver_a_menu_Click" Text="Menu" />
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
