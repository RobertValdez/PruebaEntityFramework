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
using CapaNegocio.InsertarDatos;
using CapaNegocio.Modificar;
using CapaDatos;

namespace CapaUI
{
    public partial class Form1 : Form
    {

        private N_CargarDatos N_CargarDatos = new N_CargarDatos();
        private N_InsertarDatos N_GuardarDatos = new N_InsertarDatos();
        private  N_Modificar N_Modificar = new N_Modificar();

        public Form1()
        {
            InitializeComponent();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            CargarDatos();
        }
        private void CargarDatos()
        {
          //  List<Air> MostrarDatos = N_CargarDatos.N_cargarDatos();
            //dataGridView1.DataSource = MostrarDatos;
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            GuardarNuevo();
        }
        private void GuardarNuevo()
        {
            Air air = new Air();
            air.b = txtApellido.Text;
            air.c = Convert.ToDouble(txtEdad.Text);
            air.Fecha = DateTime.Now;
            if (N_GuardarDatos.N_AddDatos(air) == 1)
            {
                MessageBox.Show("Guardado Correctamente");
                CargarDatos();
            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            ModificarDato();
        }

        private void ModificarDato()
        {
            Air air = new Air();
            air.a = Convert.ToInt32(txtId.Text);
            air.b = txtApellido.Text;
            air.c = Convert.ToDouble(txtEdad.Text);
            air.Fecha = DateTime.Now;

            if (N_Modificar.N_ModificarD(air) == 1)
            {
                MessageBox.Show("Modificado correctamente");
                CargarDatos();
            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            EliminarDato();
        }

        private void EliminarDato()
        {
            Air air = new Air();
            air.a = Convert.ToInt32(txtId_Eliminar.Text);
            if (N_Modificar.N_EliminarD(air) == 1)
            {
                MessageBox.Show("Eliminado correctamente");
                CargarDatos();
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            textBox1.TextChanged += delegate (System.Object o, System.EventArgs r)
            {
                TextBox _tbox = o as TextBox;
                _tbox.Text = new string(_tbox.Text.Where(c => (char.IsDigit(c))).ToArray());
            };
        }
    }
}
