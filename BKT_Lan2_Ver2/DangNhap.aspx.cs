using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangNhap : System.Web.UI.Page
{
    public static SqlConnection conn;
    public static SqlCommand cmd;
    public static SqlDataAdapter da;
    static DataTable tbGioHang = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        
           
    }
    //Tạo bản để lưu cớ sở
    public static DataTable getDataTable(string sql)
    {
        cmd = new SqlCommand(sql, conn);
        da = new SqlDataAdapter(cmd);
        DataTable table = new DataTable();
        da.Fill(table);
        return table;
    }
    protected void txtDangNhap_Click(object sender, EventArgs e)
    {

                String strcn = "Data Source=DESKTOP-1FR6IG6\\SQLEXPRESS;Initial Catalog=BTVeNha;Integrated Security=True";
                SqlConnection conn = new SqlConnection(strcn);
                conn.Open();
                Random r = new Random();
                int makh = r.Next(1, 99);
                string sql = "insert into tbl_KhachHang values (@MaKhachHang,@TenKH,@DiaChi,@SoDienThoai)";

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;

                SqlParameter Par = cmd.CreateParameter();
                Par.ParameterName = "@MaKhachHang";
                Par.Value = makh;
                cmd.Parameters.Add(Par);

                SqlParameter ParTen = cmd.CreateParameter();
                ParTen.ParameterName = "@TenKH";
                ParTen.Value = txtTen.Text;
                cmd.Parameters.Add(ParTen);

                SqlParameter ParEmail = cmd.CreateParameter();
                ParEmail.ParameterName = "@DiaChi";
                ParEmail.Value = txtDC.Text;
                cmd.Parameters.Add(ParEmail);

                SqlParameter ParMK = cmd.CreateParameter();
                ParMK.ParameterName = "@SoDienThoai";
                ParMK.Value = txtSDT.Text;
                cmd.Parameters.Add(ParMK);

                int rs = cmd.ExecuteNonQuery();
                if (rs == 1)
                {
                    Session["CusID"] = makh;
                    Response.Write("đã xong");
                    Server.Transfer("ThanhToan.aspx");
                }
                conn.Close();

            }  
}