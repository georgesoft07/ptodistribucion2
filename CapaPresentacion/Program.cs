using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaNegocio;
using InterfacesTipoNegocio.TipoNegocio;
using InterfacesTipoNegocio.TipoNegocio.Peticiones;

namespace CapaPresentacion
{
    class Program
    {
        static void Main(string[] args)
        {

            IGestorDeTipoNegocio gestordetipoNegocio= new GestorDeTipoNegocio();
            NuevoTipoNegocio nuevoTipoNegocio = new NuevoTipoNegocio();
            nuevoTipoNegocio.codEmpresa = "01";
            nuevoTipoNegocio.codigo = "001";
            nuevoTipoNegocio.descripcion = "tipodenegocio01";
            gestordetipoNegocio.CrearTipoNegocio(nuevoTipoNegocio);

        }
    }
}
