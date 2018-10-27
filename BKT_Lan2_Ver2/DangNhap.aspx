<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
         <center>
              <table style="border-style: none; border-color: inherit; border-width: 2px; width:548px; height: 112px;border:5px solid red;text-align:center" >
        <tr>
            <td colspan="2" style="text-align:center;color:black;font-size:xx-large;color:blueviolet">THÔNG TIN KHÁCH HÀNG</td>
            
        </tr>
        <tr>
            <td style="color:black;font-size:x-large" class="auto-style1;">Tên khách hàng:</td>
            <td>
                <asp:TextBox ID="txtTen" runat="server" Width="334px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color:black;font-size:x-large" class="auto-style1">Địa chỉ</td>
            <td>
                <asp:TextBox ID="txtDC" runat="server" Width="334px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="color:black;font-size:x-large">
                Số điện thoại</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtSDT" runat="server" Width="334px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="txtDangNhap" runat="server" Text="Đăng nhập" OnClick="txtDangNhap_Click" Width="129px" Height="41px"  style="color:black;font-size:x-large"/>
            </td>
        </tr>
    </table>
         </center>
    
     </form>
    </body>
</html>
