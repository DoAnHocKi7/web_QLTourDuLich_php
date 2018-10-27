<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThanhToan.aspx.cs" Inherits="ThanhToanaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:Label ID="Label1" runat="server" Text="THÔNG TIN HÓA ĐƠN" style="color:black;font-size:xx-large;color:#f84c14"></asp:Label>
        
        <br />
        <asp:Label ID="Label2" runat="server" Text="Ngày đặt:"></asp:Label>
        <asp:Label ID="txtThoiGianDat" runat="server" Text="Ngày đặt:"></asp:Label>
        <br />
        </center>
        <asp:Label ID="Label3" runat="server" Text="Label" style="color:#53eb0d"></asp:Label>
        <br />
        <asp:GridView ID="gvDatHang" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1009px">
            <Columns>
                <asp:BoundField DataField="idSP" HeaderText="Mã sản phẩm" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                <asp:BoundField DataField="Tongtien" HeaderText="Thành tiền" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:Label ID="lbTongTien" runat="server" Text="Label" style="color:black;margin-left:200px;font-style:italic" ></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Xác nhận thanh toán" Height="46px" Width="224px" style="color:black;font-size:large;color:#f84c14" />
    
    
        
    </div>
    </form>
</body>
</html>
