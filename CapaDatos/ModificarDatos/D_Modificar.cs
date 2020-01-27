using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos.ModificarDatos
{
    public class D_Modificar
    {
        public int ModificarDatos(Air air)
        {
            int rsp = 0;
            using (BDAEntities1 bd = new BDAEntities1())
            {
                Air _air = bd.Air.Where(d => d.a == air.a).First();

                _air.b = air.b;
                _air.c = air.c;
                _air.Fecha = air.Fecha;

                bd.Entry(_air).State = System.Data.Entity.EntityState.Modified;
                rsp = bd.SaveChanges();
            }
            return rsp;
        }

        public int EliminarDato(Air air)
        {
            int rsp = 0;
            using (BDAEntities1 bd = new BDAEntities1())
            {
                Air _air = bd.Air.Find(air.a);

                bd.Air.Remove(_air);
                rsp = bd.SaveChanges();
            }
            return rsp;
        }
    }
}
