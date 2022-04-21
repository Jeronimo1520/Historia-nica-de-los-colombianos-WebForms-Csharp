using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormSistemaDeSalud.Models;

namespace WebFormSistemaDeSalud
{
    public partial class WebFormIngresarUsuario : System.Web.UI.Page
    {
        public static List<Paciente> pacientes = new List<Paciente>();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calendarioFechaNacimiento.Visible = false;
                calendarioFechaIngresoEps.Visible = false;
                calendarioFechaIngresoSalud.Visible = false;
            }
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (calendarioFechaNacimiento.Visible)
            {
                calendarioFechaNacimiento.Visible = false;
            }
            else
            {
                calendarioFechaNacimiento.Visible = true;
            }
        }

        protected void calendarioFechaNacimiento_SelectionChanged(object sender, EventArgs e)
        {
            txtFechaNacimiento.Text = calendarioFechaNacimiento.SelectedDate.ToString("dd/MM/yyyy");
            calendarioFechaNacimiento.Visible = false;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (calendarioFechaIngresoSalud.Visible)
            {
                calendarioFechaIngresoSalud.Visible = false;
            }
            else
            {
                calendarioFechaIngresoSalud.Visible = true;
            }
        }

        protected void calendarioFechaIngresoSalud_SelectionChanged(object sender, EventArgs e)
        {
            txtFechaIngresoSalud.Text = calendarioFechaIngresoSalud.SelectedDate.ToString("dd/MM/yyyy");
            calendarioFechaIngresoSalud.Visible = false;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            if (calendarioFechaIngresoEps.Visible)
            {
                calendarioFechaIngresoEps.Visible = false;
            }
            else
            {
                calendarioFechaIngresoEps.Visible = true;
            }
        }

        protected void calendarioFechaIngresoEps_SelectionChanged(object sender, EventArgs e)
        {
            txtFechaIngresoEps.Text = calendarioFechaIngresoEps.SelectedDate.ToString("dd/MM/yyyy");
            calendarioFechaIngresoEps.Visible = false;
        }

        protected void btnVolver_a_menu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuSistemaDeSalud.aspx");
        }

        protected void btnRegistrarPaciente_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (txtNombre.Text == "")
                {
                    throw new FormatException("El campo Nombre no puede estar vacio");
                    
                }
                
                else if (txtApellidos.Text == "")
                {
                    throw new FormatException("El campo Apellidos no puede estar vacio");
                }
               
                else if (txtIdentificacion.Text == "")
                {
                    throw new FormatException("El campo Identifiacion no puede estar vacio");
                }
                        
                else if (txtFechaNacimiento.Text == "")
                {
                    throw new FormatException("Por favor ingrese una fecha de nacimiento");
                }
               
                else if (DropDownListRegimen.SelectedIndex == 0)
                {
                    throw new FormatException("Ingrese un regimen valido entre las opciones dadas");
                }
               
                else if ((int.Parse(txtSemanasCotizadas.Text) < 0 || txtSemanasCotizadas.Text == ""))
                {
                    throw new FormatException("Ingrese una cantidad de semanas validas");
                }
               
                else if (txtFechaIngresoSalud.Text == "")
                {
                    throw new FormatException("Por favor ingrese una fecha ingreso al sistema");
                }
               
                else if (txtFechaIngresoEps.Text == "")
                {
                    throw new FormatException("Por favor ingrese una fecha a la Eps");
                }
                              
                else if (DropDownListEps.SelectedIndex == 0)
                {
                    throw new FormatException("Ingrese una Eps valida entre las opciones dadas");
                }
                           
                else if (txtHistoria.Text == "")
                {
                    throw new FormatException("Ingrese una Historia clinica");
                }
                            
                else if (int.Parse(txtCantidadEnfermedades.Text) < 0 || txtCantidadEnfermedades.Text == "")
                {
                    throw new FormatException("Ingrese una cantidad de enfermedades valida no menor a 0");

                }
               
               
                              
                else if (DropDownListAfiliacion.SelectedIndex == 0)
                {
                    throw new FormatException("Ingrese un tipo de Afiliacion valido entre las opciones dadas");
                }
                          
                else if (int.Parse(txtCostos.Text) < 0 || txtCostos.Text == "")
                {
                    throw new FormatException("Ingrese costos de tratamiento validos no menores a 0");
                }
                else
                {   
                    if (pacientes.Count() > 0)
                    {
                        bool bandera = false;
                       for (int i = 0; i < pacientes.Count; i++)
                        {
                            if (pacientes[i].Id == txtIdentificacion.Text)
                            {
                                lblMensajesRegistroUsuario.Text = "Error: Usuario ya registrado";
                                bandera = true;
                                break;
                            }
                        }
                        if (bandera == false)
                        {
                            crearPaciente((txtEnfermedadRelevante.Text).ToLower(), txtHistoria.Text, int.Parse(txtCantidadEnfermedades.Text),
                                  double.Parse(txtCostos.Text), txtIdentificacion.Text, txtNombre.Text, txtApellidos.Text,
                                  DateTime.Parse(txtFechaNacimiento.Text), DateTime.Parse(txtFechaIngresoEps.Text),
                                  DateTime.Parse(txtFechaIngresoSalud.Text), DropDownListEps.Text, DropDownListRegimen.Text,
                                  DropDownListAfiliacion.Text, int.Parse(txtSemanasCotizadas.Text));
                        }
                    }
                    else
                    {
                        crearPaciente(txtEnfermedadRelevante.Text, txtHistoria.Text, int.Parse(txtCantidadEnfermedades.Text),
                                  double.Parse(txtCostos.Text), txtIdentificacion.Text, txtNombre.Text, txtApellidos.Text,
                                  DateTime.Parse(txtFechaNacimiento.Text), DateTime.Parse(txtFechaIngresoEps.Text),
                                  DateTime.Parse(txtFechaIngresoSalud.Text), DropDownListEps.Text, DropDownListRegimen.Text,
                                  DropDownListAfiliacion.Text, int.Parse(txtSemanasCotizadas.Text));
                    }
                 
                }
                
                
            }
            catch (FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
            }
        }

        private void crearPaciente(string enfermedadRelevante, string historiaClinica, int cantidadEnfermedades, double costoTratamientos,
            string id, string nombres, string apellido, DateTime fechaNacimientoStr, DateTime fechaIngresoEpsStr, DateTime fechaIngresoSistemasStr,
            string eps, string regimen, string afiliacion, int semanasCotizadas)
        {
            Paciente paciente = new Paciente(enfermedadRelevante, historiaClinica, cantidadEnfermedades, costoTratamientos, id, nombres,
            apellido, fechaNacimientoStr, fechaIngresoEpsStr, fechaIngresoSistemasStr,eps, regimen, afiliacion, semanasCotizadas);

          
            pacientes.Add(paciente);
            limpiarCampos();
            lblMensajesRegistroUsuario.Text = "Usuario registrado con exito";
            

        }
        private void limpiarCampos()
        {
            txtNombre.Text = "";
            txtApellidos.Text = "";
            txtIdentificacion.Text = "";
            txtFechaNacimiento.Text = "";
            txtFechaIngresoEps.Text = "";
            txtFechaIngresoSalud.Text = "";
            txtEnfermedadRelevante.Text = "";
            txtCantidadEnfermedades.Text = "";
            txtCostos.Text = "";
            txtHistoria.Text = "";
            txtSemanasCotizadas.Text = "";
            DropDownListAfiliacion.SelectedIndex = 0;
            DropDownListEps.SelectedIndex = 0;
            DropDownListRegimen.SelectedIndex = 0;
            
            
        }
    }
}