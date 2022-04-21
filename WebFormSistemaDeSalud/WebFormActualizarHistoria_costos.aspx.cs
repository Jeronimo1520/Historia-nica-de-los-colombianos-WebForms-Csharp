using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormSistemaDeSalud.Models;

namespace WebFormSistemaDeSalud
{
    public partial class WebFormActualizarHistoria_costos : System.Web.UI.Page
    {
        public static List<Paciente> pacientes = WebFormIngresarUsuario.pacientes;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuSistemaDeSalud.aspx");
        }

        protected void btnCambiarHistoria_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text == "")
                {
                    throw new FormatException("El campo Identificacion no puede estar vacio");
                }

                else if (txtNuevaHistoria.Text == "")
                {
                    throw new FormatException("El campo Nueva historia no puede estar vacio");
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

                            if (pacienteEncontrado.HistoriaClinica == txtNuevaHistoria.Text)
                            {
                                throw new FormatException("La historia clinica nueva es igual a la anterior");
                            }
                            else
                            {
                                pacienteEncontrado.HistoriaClinica = txtNuevaHistoria.Text;
                                lblMensajeCambiarHistoria_costos.Text = "La historia clinica fue actualizada con exito";
                                txtNuevaHistoria.Text = "";
                            }
                        }
                    }
                    if (banderaIdEncontrada == false)
                    {
                        lblMensajeCambiarHistoria_costos.Text = "No se encontro la Identificacion";
                    }

                }

            }
            catch (FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
            }
        }


        protected void btnCambiarCostos_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text == "")
                {
                    throw new FormatException("El campo Identificacion no puede estar vacio");
                }

                else if (txtNuevosCostos.Text == "")
                {
                    throw new FormatException("El campo Nuevos costos no puede estar vacio");
                }

                else if (int.Parse(txtNuevosCostos.Text) < 0)
                {
                    throw new FormatException("Ingrese un valor válido");

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

                            if (pacienteEncontrado.CostoTratamientos == int.Parse(txtNuevosCostos.Text))
                            {
                                throw new FormatException("El valor ingresado de costos es igual al anterior");
                            }
                            else
                            {
                                pacienteEncontrado.CostoTratamientos = int.Parse(txtNuevosCostos.Text);
                                lblMensajeCambiarHistoria_costos.Text = "Los costos fueron actualizados con exito";
                                txtNuevosCostos.Text = "";
                            }
                        }
                    }
                    if (banderaIdEncontrada == false)
                    {
                        lblMensajeCambiarHistoria_costos.Text = "No se encontro la Identificacion";
                    }


                }

            }
            catch (FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
            }
        }
    }
}
