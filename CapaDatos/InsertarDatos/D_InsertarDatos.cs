using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos.InsertarDatos
{
    public class D_InsertarDatos
    {
        public int Guardar(Air air)
        {
            int rsp = 0;
            using (BDAEntities1 bd = new BDAEntities1())
            {
                bd.Air.Add(air);
                rsp = bd.SaveChanges();
            }
            return rsp;
        }
    }
}
