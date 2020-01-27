using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using CapaDatos.ModificarDatos;

namespace CapaNegocio.Modificar
{
    public class N_Modificar
    {
        D_Modificar D_Modificar = new D_Modificar();
        public int N_ModificarD(Air air)
        {
            return D_Modificar.ModificarDatos(air);
        }
        public int N_EliminarD(Air air)
        {
            return D_Modificar.EliminarDato(air);
        }
    }
}
