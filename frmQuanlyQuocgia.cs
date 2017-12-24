using boat.BUS;
using boat.Model.DTO;
using boat.Util;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace boat.GUI
{
    public partial class frmQuanlyQuocgia : Form
    {
        QuocgiaBUS quocgiabus = new QuocgiaBUS();
        public frmQuanlyQuocgia()
        {
            InitializeComponent();
        }

        private void btnthem_Click(object sender, EventArgs e)
        {

        }
        private void frmQuanlyQuocgia_Load(object sender, EventArgs e)
        {
            gridControl1.DataSource = quocgiabus.layDanhSachquocgia();
        }
    }
}
