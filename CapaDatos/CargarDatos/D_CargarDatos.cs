using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos.CargarDatos
{

    public class D_CargarDatos
    {
        public List<RTS_Result> DT()
        
{
            List<RTS_Result> rsp = null;
            using (BDAEntities1 db = new BDAEntities1())
            {


                //rsp = db.Air.ToList(); // (from u in db.Air select u).ToList();
            }

            using (var context = new BDAEntities1())
            {
                var d = context.RTS();

                foreach (RTS_Result cs in d)
                {
                   // rsp = Convert.ToInt32(cs);
                }
            }


            return rsp;
        }

        public List<RTS_Result> rts()
        {
            List<RTS_Result> rtsw = null;
            using (var context = new BDAEntities1())
            {
                var d = context.RTS();

                foreach (RTS_Result cs in d)
                    Console.WriteLine(cs.a);
            }
            return rtsw;
        }
    }
}
