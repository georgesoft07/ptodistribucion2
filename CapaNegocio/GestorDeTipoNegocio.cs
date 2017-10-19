using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using InterfacesTipoNegocio.TipoNegocio.Peticiones;
using InterfacesTipoNegocio.TipoNegocio.Repuestas;
using InterfacesTipoNegocio.TipoNegocio;


namespace CapaNegocio
{
    public class GestorDeTipoNegocio : IGestorDeTipoNegocio
    {
        public TipoNegocioRegistrado CrearTipoNegocio(NuevoTipoNegocio nuevoTipoNegocio)
        {
            using (BDDISTRIBUCIONEntities Bd = new BDDISTRIBUCIONEntities())
            {
                TIPONEGOCIO tiponegocio1 = new TIPONEGOCIO();
                tiponegocio1.CODEMPRESA = "01";
                tiponegocio1.CODIGO = nuevoTipoNegocio.codigo;
                tiponegocio1.DESCRIPCION = nuevoTipoNegocio.descripcion;
                Bd.TIPONEGOCIO.Add(tiponegocio1);
                Bd.SaveChanges();
                return ConvertirTipoNegocioA_DTO(tiponegocio1);
            }
        }

        public List<TipoNegocioRegistrado> ListarTodosLosTipoNegocios()
        {
            using (BDDISTRIBUCIONEntities Bd = new BDDISTRIBUCIONEntities())
            {
                return Bd.TIPONEGOCIO.ToList().Select(x => ConvertirTipoNegocioA_DTO(x)).ToList();
            }
        }

        private TipoNegocioRegistrado ConvertirTipoNegocioA_DTO(TIPONEGOCIO tipoNegocio)
        {
            TipoNegocioRegistrado tipoNegocioRegistrado = new TipoNegocioRegistrado();
            tipoNegocioRegistrado.codEmpresa = tipoNegocio.CODEMPRESA;
            tipoNegocioRegistrado.codigo = tipoNegocio.CODIGO;
            tipoNegocioRegistrado.descripcion= tipoNegocio.DESCRIPCION;
            return tipoNegocioRegistrado;
        }

    }
}
