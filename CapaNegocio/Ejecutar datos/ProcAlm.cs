using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using CapaDatos.CargarDatos;

namespace CapaNegocio.Ejecutar_datos
{
    public class ProcAlm
    {
        private ProcJoin N_ProcJoin = new ProcJoin();
        public List<FDT_Result> N_EjecutarProc(int id)
        {
            return N_ProcJoin.D_EjecutarProc(id);
        }
    }
}
