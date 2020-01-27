using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos.CargarDatos
{

    public class D_CargarDatos
    {
        public List<Air> DT()
        {
            List<Air> rsp = null;
            using (BDAEntities1 db = new BDAEntities1())
            {

                rsp = /*db.Air.ToList();*/ (from u in db.Air select u).ToList();
            }
            return rsp;
        }
    }
}
