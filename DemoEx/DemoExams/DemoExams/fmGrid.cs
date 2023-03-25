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
    public partial class fmGrid : Form
    {
        public fmGrid()
        {
            InitializeComponent();
        }

        private void fmGrid_Load(object sender, EventArgs e)
        {
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dergachIspDataSet1.transport". При необходимости она может быть перемещена или удалена.
            this.transportTableAdapter1.Fill(this.dergachIspDataSet1.transport);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dergachIspDataSet.transport". При необходимости она может быть перемещена или удалена.
            this.transportTableAdapter.Fill(this.dergachIspDataSet.transport);

        }

        private void buttonAdd_Click(object sender, EventArgs e)
        {
            this.Close();
            fmAdd fmadd = new fmAdd();
            fmadd.Show();
         
        }
    }
}
