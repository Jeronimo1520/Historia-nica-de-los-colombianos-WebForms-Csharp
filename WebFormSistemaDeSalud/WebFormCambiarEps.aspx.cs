using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormSistemaDeSalud.Models;

namespace WebFormSistemaDeSalud
{
    public partial class WebFormCambiarEps : System.Web.UI.Page
    {

        public static List<Paciente> pacientes = WebFormIngresarUsuario.pacientes;

        protected void Page_Load(object sender, EventArgs e)    
        {

        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuSistemaDeSalud.aspx");
        }

      
        public static bool calcularTiempoEnEps(Paciente paciente, DateTime fechaIngresoPaciente)
        {
            DateTime fechaActual;
            int tiempoEnEps;


            fechaActual = DateTime.Now;

            tiempoEnEps = fechaIngresoPaciente.Month - fechaActual.Month;

            if (tiempoEnEps > 3)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void btnCambiarEps_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text == "")
                {
                    throw new FormatException("El campo Identificacion no puede estar vacio");
                }

                else if (DropDownListCambioEps.SelectedIndex == 0)
                {
                    throw new FormatException("Seleccione una Eps valida entre las opciones dadas");
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
                            bool tiempo = calcularTiempoEnEps(pacienteEncontrado, pacienteEncontrado.FechaIngresoEpsStr);
                            if (tiempo == true)
                            {

                                string EpsNueva = DropDownListCambioEps.Text;
                                if (EpsNueva == pacienteEncontrado.Eps)
                                {
                                    throw new FormatException("El paciente ya tiene la Eps seleccionada");
                                }
                                else
                                {
                                    pacienteEncontrado.Eps = EpsNueva;
                                    lblMensajeCambiarEps.Text = "Cambio hecho con éxito";
                                    limpiarCampos();
                                }
                                
                            }
                            else
                            {
                                throw new FormatException("El tiempo en la Eps actual debe ser mayor a 3 meses");

                            }
                        }
                        
                    }
                    if (banderaIdEncontrada == false)
                    {
                        lblMensajeCambiarEps.Text = "No se encontro la Identificacion";
                        limpiarCampos();
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
            DropDownListCambioEps.SelectedIndex = 0;

        }
    }
}