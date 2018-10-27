<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCard.aspx.cs" Inherits="ShoppingCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 495px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       
    
        <br />
        <center>
            <asp:Label ID="Label2" runat="server" Text="GIO HÀNG" style="font-size:xx-large;color:#ff6a00"  ></asp:Label>
        </center>
        
     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ShowSach.aspx" style="font-size:large" >Tiếp tục mua hàng</asp:HyperLink>
        <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="264px" Width="1030px" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="idSP" HeaderText="Mã sản phẩm" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" />
                <asp:BoundField DataField="Gia" HeaderText="Đơn giá" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label" style="color:black;margin-left:400px;font-style:italic" ></asp:Label>
        <br />
        <center>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Thanh toán ngay nào" Height="43px" Width="192px"  />
        </center>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
