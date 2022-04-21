using System;
using WebFormSistemaDeSalud;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using WebFormSistemaDeSalud.Models;

namespace WebFormSistemaDeSaludTest
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod()]
        public void TestCalcularEdad()
        {
            DateTime fechaNacimiento = DateTime.Parse("15/09/2003");

            int result = MenuSistemaDeSalud.calcularEdad(fechaNacimiento);

            int valorEsperado = 19;
            Assert.AreEqual(result,valorEsperado);
        }

        [TestMethod()]
        public void TestCalcularTiempoEnEps()
        {
            
            
            Paciente paciente = new Paciente("cancer", "asdfg", 1, 10000, "123", "Juan",
            "Zapata", DateTime.Parse("12/09/1978"), DateTime.Parse("12/09/1980"),
            DateTime.Parse("30/07/2020"), "Sura", "Subsidiado", "Cotizante", 1);

            bool result = WebFormCambiarEps.calcularTiempoEnEps(paciente, paciente.FechaIngresoEpsStr);

            bool valorEsperado = true;
            Assert.AreEqual(result, valorEsperado);
        }
    }
}
