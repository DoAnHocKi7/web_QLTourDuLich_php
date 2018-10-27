using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThanhToanaspx : System.Web.UI.Page
{
    DataTable tbGioHang = new DataTable();
    Random r=new Random();
    public static SqlCommand cmd;
    public static SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        

        Label3.Text = "Chào khách hàng có mã số:" +" " + Session["CusID"];
        
        tbGioHang = (DataTable)Session["GioHang"];
 
 
        string strnumber = tbGioHang.Compute("Sum(TongTien)", "").ToString();
        lbTongTien.Text = strnumber;
        gvDatHang.DataSource = tbGioHang;
        gvDatHang.DataBind();
        txtThoiGianDat.Text = DateTime.Now.Date.ToString();
        }



    protected void Button1_Click(object sender, EventArgs e)
    {
        String strcn = "Data Source=DESKTOP-1FR6IG6\\SQLEXPRESS;Initial Catalog=BTVeNha;Integrated Security=True";
        SqlConnection conn = new SqlConnection(strcn);
        conn.Open();

        Random r = new Random();
        int mahd = r.Next(1, 99);

        int idkh = int.Parse(Session["CusID"].ToString());
        
        string sql1 = "insert into tbl_HoaDon values(@mahd,@ngdat,@makh)";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql1;

        SqlParameter Par = cmd.CreateParameter();
        Par.ParameterName = "@mahd";
        Par.Value = mahd;
        cmd.Parameters.Add(Par);

        SqlParameter ParNgay = cmd.CreateParameter();
        ParNgay.ParameterName = "@ngdat";
        ParNgay.Value = txtThoiGianDat.Text;
        cmd.Parameters.Add(ParNgay);

        SqlParameter ParKH = cmd.CreateParameter();
        ParKH.ParameterName = "@makh";
        ParKH.Value = idkh;
        cmd.Parameters.Add(ParKH);
         int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
        {
            
            Response.Write("thêm thành công");
        }
        //if (tbGioHang.Rows.Count > 0)
        //{
        //    //string sql2 = "Insert into tbl_ChiTiet values(@mahd,@masp,@sl)";
        //    foreach (DataRow row in tbGioHang.Rows)
        //    {
        //        int idSP = int.Parse(row["idSP"].ToString());
        //        int SoLuong = int.Parse(row["SoLuong"].ToString());
        //        string sql3 = "insert into tbl_ChiTiet values(@mahd,'" + idSP + "','" +SoLuong + "')";
        //        cmd = new SqlCommand(sql3, conn);
        //      int rs1=  cmd.ExecuteNonQuery();

        //    }


        conn.Close();
    }
}
