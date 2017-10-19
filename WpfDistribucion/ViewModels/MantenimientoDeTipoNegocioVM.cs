using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaNegocio;
using InterfacesTipoNegocio.TipoNegocio;
using InterfacesTipoNegocio.TipoNegocio.Peticiones;
using System.Collections.ObjectModel;
using InterfacesTipoNegocio.TipoNegocio.Repuestas;

namespace WpfDistribucion.ViewModels
{

    public class MantenimientoDeTipoNegocioVM : INotifyPropertyChanged
    {


        private NuevoTipoNegocio _nuevoTipoNegocio = new NuevoTipoNegocio();
        public NuevoTipoNegocio nuevoTipoNegocio
        {
            get { return _nuevoTipoNegocio; }
            set
            {
                this._nuevoTipoNegocio = value;
                this.OnPropertyChanged("nuevoProducto");
            }
        }

        protected void OnPropertyChanged(string name)
        {
            PropertyChangedEventHandler handler = this.PropertyChanged;
            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(name));
            }
        }


        public void GrabarTipoNegocio()
        {
            TipoNegocioRegistrado nuevoTipoNegocioRegistrado = this._gestorDeTipoNegocio.CrearTipoNegocio(this.nuevoTipoNegocio);
            this.tiponegocioResgistrados.Add(nuevoTipoNegocioRegistrado);
            this.nuevoTipoNegocio = new NuevoTipoNegocio();
        }


        public event PropertyChangedEventHandler PropertyChanged;



        public ObservableCollection<TipoNegocioRegistrado> tiponegocioResgistrados { get; set; }
        private IGestorDeTipoNegocio _gestorDeTipoNegocio = new GestorDeTipoNegocio();


        public void CargarTipoNegocio()
        {
            this.tiponegocioResgistrados = new ObservableCollection<TipoNegocioRegistrado>();
            _gestorDeTipoNegocio.ListarTodosLosTipoNegocios().ForEach(x => this.tiponegocioResgistrados.Add(x));
        }



    }



}
