using InterfacesTipoNegocio.TipoNegocio.Repuestas;
using InterfacesTipoNegocio.TipoNegocio.Peticiones;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;




namespace InterfacesTipoNegocio.TipoNegocio
{
    public interface IGestorDeTipoNegocio
    {

        TipoNegocioRegistrado CrearTipoNegocio(NuevoTipoNegocio nuevoTipoNegocio);

    }
}
