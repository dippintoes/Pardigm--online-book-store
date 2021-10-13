<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="discount.aspx.cs" Inherits="try1.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
           .product-card{
    width: 449px;
    float: left;
    position: relative;
    box-shadow: 0 2px 7px #dfdfdf;
    margin: 50px auto;
    background: #fafafa;
    margin-right: 80px;
}
.product-tumb {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 300px;
    padding: 50px;
    background: #f0f0f0;
}

.product-tumb img{
    max-width: 100%;
    max-height: 100%;
}

.product-details{
    padding: 30px;
}

.product-catagory {
    display: block;
    font-size: 12px;
    font-weight: 700;
    text-transform: uppercase;
    color: red;
    margin-bottom: 18px;
}

.product-details h4 a{
    font-weight: 500;
    display: block;
    margin-bottom: 18px;
    text-transform: uppercase;
    color: #363636;
    text-decoration: none;
    transition: 0.3s;
}

.product-details h4 a:hover {
    color: #fbb72c;
}

.product-details p{
    font-size: 15px;
    line-height: 22px;
    margin-bottom: 18px;
    color: #999;
}

.product-bottom-details {
    overflow: hidden;
    border-top: 1px solid #eee;
    padding-top: 20px;
}

.product-bottom-details div {
    float: left;
    width: 50%;
}

.h2, .h1{
	padding-top: 50px;
font-size: 50px;
font-family: 'Roboto Mono', monospace;
text-decoration: none;
color: black;
cursor: pointer;
}
.h2 a,.h1 a{
	text-decoration: none;
	color: black;
}
.h2 a:hover,.h1 a:hover{
	background-color: orange;
	color: black;
}
.product-price {
    font-size: 18px;
    color: #fbb72c;
    font-weight: 600;
}

.product-price small{
    font-size: 80%;
    font-weight: 400;
    text-decoration: line-through;
    display: inline-block;
    margin-right: 5px;
}
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
            width: 652px;
        }
        .auto-style5 {
            width: 652px;
        }
        .auto-style6 {
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style7 {
            text-align: center;
            width: 652px;
            height: 173px;
        }
        .auto-style8 {
            margin-left: 2px;
            margin-top: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>
            
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Special offer for Pradigm Members!!!"></asp:Label>
            </strong>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="isbnno" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <div class="product-card">
		<div class="product-tumb">
		      <asp:ImageButton runat="server" ID="button"  width="80%" height="100%" CssClass="imgButton" ImageUrl='<%# "~/Imgs/"+ Eval("imageurl") %>'  OnMouseOver='<%# "~/Imgs/"+ Eval("imageurl") %>' OnMouseOut='<%# "~/Imgs/"+ Eval("imageurl") %>' CommandArgument='<%# Eval("isbnno") %>' />
		</div>
		<div class="product-details">
		
			<h4><a href=""><%# Eval("title") %></a></h4>
			<p><%# Eval("description") %></p>
			<div class="product-bottom-details">
				<div class="product-price"><small>$500.00</small>  Rs. <%# Eval("price") %></div>
			</div><br />
                            <div><center> <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("isbnno")%>' CommandName="addtocart" CssClass="auto-style8" Height="45px" Width="45px" ImageUrl="~/Imgs/order.png" /></div>

		</div>
	</div>
                      </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" SelectCommand="SELECT [isbnno], [title], [author], [price], [description], [imageurl] FROM [books]"></asp:SqlDataSource>
    </form>
</asp:Content>
