using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class ShoppingCard : System.Web.UI.Page
{
    static DataTable tbGioHang = new DataTable();
   
    private void load_data()
    {
        tbGioHang = (DataTable)Session["GioHang"];
        gvGioHang.DataSource = tbGioHang;
        gvGioHang.DataBind();
        string strnumber = tbGioHang.Compute("Sum(TongTien)", "").ToString();
        Label1.Text ="Tổng tiền:" + strnumber;
    }
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack ==false)
            if (Session["Giohang"] != null)
            {

                load_data();
            }
            else
            {
                Response.Write("Chưa có sản phẩm nào trong giỏ hàng");
                Label1.Visible = true;
                Button1.Visible = true;

            }
    }

    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Server.Transfer("DangNhap.aspx");
    }
}