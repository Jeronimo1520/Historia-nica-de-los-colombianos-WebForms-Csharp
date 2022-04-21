using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormSistemaDeSalud.Models;

namespace WebFormSistemaDeSalud
{
    public partial class WebFormCambiarRegimen : System.Web.UI.Page
    {
        public static List<Paciente> pacientes = WebFormIngresarUsuario.pacientes;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
      
        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuSistemaDeSalud.aspx");
        }

        protected void btnCambiarRegimen_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text == "")
                {
                    throw new FormatException("El campo Identificacion no puede estar vacio");
                }

                else if (DropDownListRegimen.SelectedIndex == 0)
                {
                    throw new FormatException("Seleccione un regimen valido entre las opciones dadas");
                }
                else
                {
                    Paciente pacienteEncontrado;
                    bool banderaIdEncontrada = false;
                    for (int i = 0; i < pacientes.Count; i++)
                    {
                        if (pacientes[i].Id == txtId.Text)
                        {
                            pacienteEncontrado = pacientes[i];
                            banderaIdEncontrada = true;

                            if (pacienteEncontrado.Regimen == DropDownListRegimen.Text)
                            {
                                throw new FormatException("El paciente ya tiene el regimen seleccionado");
                            }
                            else
                            {
                                pacienteEncontrado.Regimen = DropDownListRegimen.Text;
                                lblMensajeCambioRegimen.Text = "Regimen cambiado con exito";
                                limpiarCampos();
                            }
                        }
                    }
                    if (banderaIdEncontrada == false)
                    {
                        lblMensajeCambioRegimen.Text = "No se encontro la Identificacion";
                    }
                }
            }
            catch (FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
            }
        }

        private void limpiarCampos()
        {
            txtId.Text = "";
            DropDownListRegimen.SelectedIndex = 0;

        }
    }
}