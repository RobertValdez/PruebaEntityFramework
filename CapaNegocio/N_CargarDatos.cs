using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using CapaDatos.CargarDatos;

namespace CapaNegocio
{
    public class N_CargarDatos
    {
        D_CargarDatos D_CargarDatos = new D_CargarDatos();
        public List<Air> N_cargarDatos()
        {
            return D_CargarDatos.DT();
        }
    }
}
