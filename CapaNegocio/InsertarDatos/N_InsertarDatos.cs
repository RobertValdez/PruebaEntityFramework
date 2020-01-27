using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using CapaDatos.InsertarDatos;

namespace CapaNegocio.InsertarDatos
{
    public class N_InsertarDatos
    {
        D_InsertarDatos D_Insertar = new D_InsertarDatos();
        public int N_AddDatos(Air air)
        {
            return D_Insertar.Guardar(air);
        }
    }
}
