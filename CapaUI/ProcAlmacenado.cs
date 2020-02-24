using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaDatos;
using CapaNegocio.Ejecutar_datos;

namespace CapaUI
{
    public partial class ProcAlmacenado : Form
    {
        private ProcAlm N_ProAlm = new ProcAlm();
        public ProcAlmacenado()
        {
            InitializeComponent();
        }

        private void ProcAlmacenado_Load(object sender, EventArgs e)
        {
            ejecutarProc();
        }

        private void ejecutarProc()
        {
           dataGridView1.DataSource = N_ProAlm.N_EjecutarProc(1);
        }
    }
}
