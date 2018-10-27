using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowSach : System.Web.UI.Page
{

    static DataTable tbGioHang = new DataTable();
    private void load_data()
    {
        
        //DataList1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

         
        if (!IsPostBack)
        {
            if (Session["GioHang"] != null)
            {
                tbGioHang = Session["GioHang"] as DataTable;
            }
            else
            {
                tbGioHang.Rows.Clear();
                tbGioHang.Columns.Clear();
                tbGioHang.Columns.Add("idSP", typeof(int));
                tbGioHang.Columns.Add("TenSP", typeof(string));
                tbGioHang.Columns.Add("Gia", typeof(int));
                tbGioHang.Columns.Add("SoLuong", typeof(int));
                tbGioHang.Columns.Add("TongTien", typeof(int), "SoLuong * Gia");
                tbGioHang.Columns.Add("AnhSP", typeof(Image));
            }
            //load_data();
        }
    }
    protected void DLSach_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "ShoppingCard")
        {
            int masp = int.Parse(DataList1.DataKeys[e.Item.ItemIndex].ToString());
            string tensp = ((Label)e.Item.FindControl("Label2")).Text;
            int gia = int.Parse(((Label)e.Item.FindControl("Label3")).Text);
            int sl = 1;
            //float thanhtien = gia * sl;
            //Image hinhanh = ((Image)e.Item.FindControl("Image1"));
            //hinhanh.ImageUrl="hinhanh";
            
            //Add vao gio hang

            foreach (DataRow row in tbGioHang.Rows)
            {//Kiem tr neu mat hang da co roi thi tang so luong len 1
                if ((int)row["idSP"] == masp)
                {
                    row["SoLuong"] = (int)row["SoLuong"] + 1;
                    goto GioHang;
                }
            }
            tbGioHang.Rows.Add(masp, tensp, gia, sl);
        GioHang:
            Session["GioHang"] = tbGioHang;
        Label4.Text = "Đã thêm vào giỏ hàng";
        //Server.Transfer("ShoppingCard.aspx");
        string strnumber = tbGioHang.Compute("Count(SoLuong)", "").ToString();
        Label3.Text = "Số sản phẩm đang chọn là:  " + strnumber;
        }
        //Label1.Visible = true;
        //Label1.Text = "Số sản phẩm đã được chọn:" + ((DataTable)Session["GioHang"]);
    }
}