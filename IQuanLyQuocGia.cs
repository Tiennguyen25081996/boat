using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace BoatService.Service.tien
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IQuanLyQuocGia" in both code and config file together.
    [ServiceContract]
    public interface IQuanLyQuocGia
    {
        [OperationContract]
        bool themquocgia(string maquocgia, string tenquocgia);

        [OperationContract]
        bool suaquocgia(string maquocgia, string tenquocgia);

        [OperationContract]
        bool xoaquocgia(string maquocgia);

        [OperationContract]
        DataSet layDanhSachquocgia();
    }
}
