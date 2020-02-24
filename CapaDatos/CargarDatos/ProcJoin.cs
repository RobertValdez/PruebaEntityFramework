using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos.CargarDatos
{
    public class ProcJoin
    {
        public List<FDT_Result> D_EjecutarProc(int id)
        {
            List<FDT_Result> dt = new List<FDT_Result>();
            using (BDAEntities1 bd = new BDAEntities1())
            {
                var data = bd.FDT(id);

                dt = data.ToList();
                //dataGridView1.DataSource = a;

                //foreach (var item in data)
                //{
                //    MessageBox.Show(item.As);
                //}
            }
            return dt;
        }
    }
}
