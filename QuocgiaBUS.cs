using boat.QuocgiaService;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace boat.BUS
{
    class QuocgiaBUS
    {
        private QuanLyQuocGiaClient quocgia = null;
        public QuocgiaBUS()
        {
            quocgia = new QuanLyQuocGiaClient();
        }
        public bool suaquocgia(string maquocgia, string tenquocgia)
        {
            return quocgia.suaquocgia(maquocgia, tenquocgia);
        }
        public bool xoaQUOCGIA(string matauthuyen)
        {
            return quocgia.xoaquocgia(matauthuyen);
        }

        public DataSet layDanhSachquocgia()
        {
            return quocgia.layDanhSachquocgia();
        }

        public bool themquocgia(string maquocgia,string tenquocgia)
        {
            return quocgia.themquocgia(maquocgia,tenquocgia);
        }

    }
}
