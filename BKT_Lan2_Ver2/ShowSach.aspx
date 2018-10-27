<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowSach.aspx.cs" Inherits="ShowSach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 544px;
        }
        .auto-style4 {
            width: 249px;
            height: 324px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            height: 135px;
        }
        .auto-style8 {
            height: 324px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 250px">
    
        
    
        <table style="width:403%; height: 221px;">
            <tr>
                <td class="auto-style5" colspan="2">
                    
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ShoppingCard.aspx">Xem giỏ hàng</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource1" OnItemCommand="DLSach_ItemCommand" RepeatColumns="4" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <table class="auto-style6">
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# Eval("HinhAnh") %>' Width="100px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("MaSanPham") %>' CommandName="ShoppingCard" ImageUrl="~/image/ChonMua.jpg" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTVeNhaConnectionString %>" SelectCommand="SELECT * FROM [tbl_SanPham]"></asp:SqlDataSource>
                </td>
            </tr>
                        
       
    
        </table>
    </div>
    </form>
</body>
</html>
