using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using BoatService.db;

namespace BoatService.Service.tien
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "QuanLyQuocGia" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select QuanLyQuocGia.svc or QuanLyQuocGia.svc.cs at the Solution Explorer and start debugging.
    public class QuanLyQuocGia : IQuanLyQuocGia
    {
        ConnectDB db = new ConnectDB();

        public DataSet layDanhSachquocgia()
        {
            string query = @"select ma, tenquocgia from quocgia";

            DataSet set = db.GetDataSet(query, "quocgia");

            return set;
        }

        public bool suaquocgia(string maquocgia, string tenquocgia)
        {
            bool state = true;

            string query = @"update quocgia 
                            set tenquocgia = " + tenquocgia
                           + "where ma = " + maquocgia;
            state = db.GetStatusExcuteNonQuery(query);

            return state;
        }

        public bool themquocgia(string maquocgia, string tenquocgia)
        {
            bool state = true;
            string query = @"insert into quocgia(ma, tenquocgia) 
                            values(" + maquocgia + ", " + tenquocgia + " )";
            state = db.GetStatusExcuteNonQuery(query);

            return state;
        }

        public bool xoaquocgia(string maquocgia)
        {
            bool state = true;
            string query = @"DELEETE FROM quocgia 
                            where ma=" + maquocgia;
            state = db.GetStatusExcuteNonQuery(query);

            return state;
        }
    }
}
