<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="discountdetails.aspx.cs" Inherits="try1.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 101%;
            height: 237px;
        }
        .auto-style3 {
            width: 237px;
            font-size: x-large;
        }
        .auto-style4 {
            width: 237px;
            height: 72px;
            font-size: large;
            color: #FF3300;
            background-color: #000000;
        }
        .auto-style5 {
            height: 72px;
            background-color: #000000;
        }
        .auto-style6 {
            width: 237px;
            height: 23px;
            font-size: x-large;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            font-size: xx-large;
            color: #FF6600;
        }
        .auto-style9 {
            background-color: #000000;
        }
        .auto-style10 {
            margin-top:50px;
            font-size: xx-large;
            color: black;
        }
        .auto-style11 {
            text-align: center;
            height: 896px;
            background-color: #CCCCCC;
        }
        .auto-style12 {
            color: #FF3300;
            font-weight: bold;
            background-color: #000000;
        }
        .auto-style13 {
            color: #FF3300;
            font-weight: bold;
            font-size: large;
            background-color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="auto-style11">
        <div class="auto-style9">
          
            <br />
        </div><br /><br />
        <asp:Label ID="Label2" runat="server" Text="My Cart" CssClass="auto-style10"></asp:Label><br /><br />
        <br />
        <br />        <center><asp:Button ID="Button3" runat="server" Text="Continue Shopping" PostBackUrl="~/discount.aspx" BackColor="Orange" Font-Bold="True" ForeColor="Black" /></center>
            <br /><br />
        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="isbnno" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Height="389px" Width="902px" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                <AlternatingRowStyle BackColor="#CCCCCC" />
              

                <Columns>          
                    <asp:BoundField DataField="isbnno" HeaderText="Serial No." />
                    <asp:BoundField DataField="title" HeaderText="Name" />
                    <asp:BoundField DataField="price" HeaderText="Amount to be paid" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
        <br />
        <br />
        <table class="auto-style2" border="1">
            <tr>
                <td class="auto-style4"><strong>Enter Your Coupon Code</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="333px"></asp:TextBox>
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="APPLY COUPON" CssClass="auto-style12" Height="46px" OnClick="Button1_Click" Width="129px" />
                    </strong>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Discount</strong></td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Final Price</strong></td>
                <td class="auto-style7">
                   <strike><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></strike> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
            <strong>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="48px" OnClick="Button2_Click" Text="CHECKOUT" Width="256px" />
            </strong>
        <br />
        <br />
        </div>
    </form>

</asp:Content>
