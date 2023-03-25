using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DemoExams
{
    public partial class fmAdd : Form
    {
        public fmAdd()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
            fmGrid fmgrid = new fmGrid();
            fmgrid.Show();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
