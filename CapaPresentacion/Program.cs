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
            nuevoTipoNegocio.codigo = "002";
            nuevoTipoNegocio.descripcion = "tipodenegocio02";
            gestordetipoNegocio.CrearTipoNegocio(nuevoTipoNegocio);

        }
    }
}
