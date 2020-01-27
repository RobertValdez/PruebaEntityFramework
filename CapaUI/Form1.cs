using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaNegocio;
using CapaDatos;

namespace CapaUI
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private N_CargarDatos N_CargarDatos = new N_CargarDatos();
        private void Form1_Load(object sender, EventArgs e)
        {
            List<Air> MostrarDatos = N_CargarDatos.N_cargarDatos();
            dataGridView1.DataSource = MostrarDatos;
        }
    }
}
