using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormSistemaDeSalud.Models;

namespace WebFormSistemaDeSalud
{
    public partial class MenuSistemaDeSalud : System.Web.UI.Page
    {
        public static List<Paciente> pacientes = WebFormIngresarUsuario.pacientes;
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void btnRegistrarUsuario_Click(object sender, EventArgs e)
        {   
            Response.Redirect("WebFormIngresarUsuario.aspx");
        }

        protected void btnCambiarEps_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormCambiarEps.aspx");
        }

        protected void btnCambiarRegimen_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormCambiarRegimen.aspx");
        }

        protected void btnActualizacion_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormActualizarHistoria_costos.aspx");
        }

        protected void btnEstadisticas_Click(object sender, EventArgs e)
        {
           
            total_y_PorcentajeCostosPorEps(pacientes);
            porcentajeSinEnfermedades(pacientes);
            pacienteMayorCostos(pacientes);
            porcentajePacientesPorEdad(pacientes);
            porcentajePorRegimen(pacientes);
            porcentajePorAfiliacion(pacientes);
            porcentajeEnfermedadCancer(pacientes);
            txtEstadisticas.Visible = true;
        }


        public void total_y_PorcentajeCostosPorEps(List<Paciente> pacientes)
        {
            double costosSura, costosNuevaEps, costosSaludTotal, costosSanitas, costosSavia, costosTotales, porcentajeSura, porcentajeNuevaEps,
                porcentajeSaludTotal, porcentajeSanitas,porcentajeSavia;

            costosSura = calcularCostosPorEps("Sura", pacientes);
            costosNuevaEps = calcularCostosPorEps("Nueva Eps", pacientes);
            costosSaludTotal = calcularCostosPorEps("Salud Total", pacientes);
            costosSanitas = calcularCostosPorEps("Sanitas", pacientes);
            costosSavia = calcularCostosPorEps("Savia", pacientes);

            txtEstadisticas.Text += ("Total de costos de Sura: " + costosSura.ToString() + "\nTotal costos de Nueva Eps: " + costosNuevaEps.ToString() +
                "\nTotal de costos de Salud Total:" + costosSaludTotal.ToString() + "\nTotal de costos de Sanitas: " + costosSanitas.ToString() +
                "\nTotal de costos de Savia: " +
                costosSavia.ToString() + "\n");

            costosTotales = costosSura + costosNuevaEps + costosSaludTotal + costosSanitas + costosSavia;

            porcentajeSura = ((costosSura / costosTotales) * 100);
            porcentajeNuevaEps = ((costosNuevaEps / costosTotales)* 100);
            porcentajeSaludTotal = ((costosSaludTotal / costosTotales) * 100);
            porcentajeSanitas = ((costosSanitas / costosTotales) * 100);
            porcentajeSavia = ((costosSavia / costosTotales) * 100);

            txtEstadisticas.Text += "\n" + "El porcentaje de costos de Sura es: " + porcentajeSura.ToString() + "%" +
                "\nEl porcentaje de costos de Nueva Eps es: " + porcentajeNuevaEps.ToString() + "%" +
                "\nEl porcentaje de costos de Salud Total es: " + porcentajeSaludTotal.ToString() + "%" +
                "\nEl porcentaje de costos de Sanitas es: " + porcentajeSanitas.ToString() + "%" +
                "\nEl porcentaje de costos de Savia es: " + porcentajeSavia.ToString() + "%";

        }

        public double calcularCostosPorEps(string eps, List<Paciente> pacientes)
        {
            double suma;
            var pacientesConEpsACalcular = pacientes.Where(x => x.Eps == eps).ToList();
            suma = pacientesConEpsACalcular.Sum(x => x.CostoTratamientos);

            return suma;
        }

        public void porcentajeSinEnfermedades(List<Paciente> pacientes)
        {


            int totalPacientes = pacientes.Count();
            double totalPacientesSinEnfermedades = 0;
            foreach (Paciente paciente in pacientes)
            {
                if (paciente.CantidadEnfermedades == 0)
                {
                    totalPacientesSinEnfermedades += 1;
                }
                
            }
            

            txtEstadisticas.Text += "\n" + "El porcentaje de pacientes sin enfermedades son: " + 
                ((totalPacientesSinEnfermedades / totalPacientes) * 100).ToString() + "%";
            
        }
        public void pacienteMayorCostos(List<Paciente> pacientes)
        {
            var pacientesOrdenadosPorCostoDeTratamiento = pacientes.OrderByDescending(x => x.CostoTratamientos).ToList();
            var primero = pacientesOrdenadosPorCostoDeTratamiento.First();

            txtEstadisticas.Text += "\n" + "El paciente con mayor costos es: " + primero.Nombres + " " + primero.Apellido +
                " con Id: " + primero.Id;

        }

        public static int calcularEdad(DateTime FechaNacimiento)
        {
            int edad;
            edad = DateTime.Now.Year - FechaNacimiento.Year;
            return edad;
        }

        public void porcentajePacientesPorEdad(List<Paciente> pacientes)
        {
            int edad;
            int totalPacientes = pacientes.Count();
            int contNiños = 0, contAdolescentes = 0, contJovenes = 0, contAdultos = 0, contAdultoMayor = 0, contAncianos = 0;

            foreach (Paciente paciente in pacientes)
            {
                edad = calcularEdad(paciente.FechaNacimientoStr);
                if ((edad >= 0 && edad < 12))
                {
                    contNiños += 1;
                }
                else if ((edad >= 12 && edad < 17))
                {
                    contJovenes += 1;
                }
                else if ((edad >= 18 && edad < 30))
                {
                    contAdolescentes += 1;
                }
                else if ((edad >= 30 && edad < 55))
                {
                    contAdultos += 1;
                }
                else if ((edad >= 55 && edad < 75))
                {
                    contAdultoMayor += 1;
                }
                else if ((edad >= 75))
                {
                    contAncianos += 1;
                }

            }


            txtEstadisticas.Text += "\n" + "El porcentaje de niños es: " + ((contNiños / totalPacientes) * 100).ToString() + "%" +
             "\nEl porcentaje de jovenes es: " + ((contJovenes / totalPacientes) * 100).ToString() + "%" +
             "\nEl porcentaje de Adolescentes es: " + ((contAdolescentes / totalPacientes) * 100).ToString() + "%" +
             "\nEl porcentaje de Adultos es: " + ((contAdultos / totalPacientes) * 100).ToString() + "%" +
             "\nEl porcentaje de Adultos mayores es: " + ((contAdultoMayor / totalPacientes) * 100).ToString() + "%" +
             "\nEl porcentaje de Ancianos es: " + ((contAncianos / totalPacientes) * 100).ToString() + "%";

        }

        public  void porcentajePorRegimen(List<Paciente> pacientes)
        {
            int contContributivos = 0;
            int contSubsidiados = 0;
            double  totalPacientes = pacientes.Count();

            foreach (Paciente paciente in pacientes)
            {
                if (paciente.Regimen == "Contributivo")
                {
                    contContributivos += 1;
                }
                else if (paciente.Regimen == "Subsidiado")
                {
                    contSubsidiados += 1;
                }

                
            }

            txtEstadisticas.Text += "\n" + "El porcentaje de contributivos es: " + ((contContributivos / totalPacientes) * 100).ToString() + "%"
                +"\n" + "El porcentaje de subsidiados es: " + ((contSubsidiados / totalPacientes)* 100).ToString() + "%";
        }

        public void porcentajePorAfiliacion(List<Paciente> pacientes)
        {
            int contCotizantes = 0;
            int contBeneficiarios = 0;
            double totalPacientes = pacientes.Count();

            foreach (Paciente paciente in pacientes)
            {
                if (paciente.Afiliacion == "Cotizante")
                {
                    contCotizantes += 1;
                }
                else if (paciente.Afiliacion == "Beneficiario")
                {
                    contBeneficiarios += 1;
                }
                
            };
            double porcCotizantes = (contCotizantes / totalPacientes) * 100;
            double porcBeneficiarios = (contBeneficiarios / totalPacientes) * 100;
            txtEstadisticas.Text += "\n" + "El porcentaje de Cotizantes es: " + porcCotizantes.ToString()
                + "%" + "\n" + "El porcentaje de Beneficiarios es: " + porcBeneficiarios.ToString() + "%";
           

        }

        public void porcentajeEnfermedadCancer(List<Paciente> pacientes)
        {
            int contPacientesCancer = 0;
            double totalPacientes = pacientes.Count();
            double porcentajeEnfermedadCancer;
            foreach (Paciente paciente in pacientes)
            {
                if ((paciente.EnfermedadRelevante == "cancer" || paciente.EnfermedadRelevante == "cáncer"))
                {
                    contPacientesCancer += 1;

                }
                
            }

            porcentajeEnfermedadCancer = (contPacientesCancer / totalPacientes) * 100;
            txtEstadisticas.Text += "\nEl porcentaje de pacientes con cancer es: " + porcentajeEnfermedadCancer.ToString() + " %";  
        }
    }
}