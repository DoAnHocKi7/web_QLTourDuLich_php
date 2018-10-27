using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for KetNoi
/// </summary>
public class KetNoi
{
	public KetNoi()
	{
		
	}
    public static SqlConnection conn;
    public static SqlCommand cmd;
    public static SqlDataAdapter da;
    public static void OpenConection()
    {
        String strcn = "Data Source=DESKTOP-1FR6IG6\\SQLEXPRESS;Initial Catalog=BTVeNha;Integrated Security=True";
        SqlConnection conn = new SqlConnection(strcn);
        conn.Open();
        
    }
    //đóng kêt nối
    public static void CloseConnection()
    {
        conn.Close();
        conn.Dispose();
        conn = null;

    }
}