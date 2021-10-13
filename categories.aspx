<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="try1.categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Categories</title>
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
         .buttonClass
        {
            padding: 2px 20px;
            text-decoration: none;
            border: solid 1px black;
            background-color: orange;
            color: black;
            
        }
          .buttonClass1
        {
            padding: 2px 20px;
            text-decoration: none;
            border: solid 1px black;
            background-color: #52575d;
            color: white;
            
        }
        .buttonClass:hover
        {
            border: solid 1px Black;
             background-color: #52575d;
            color: white;
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
.badge {
    position: absolute;
    left: 0;
    top: 20px;
    text-transform: uppercase;
    font-size: 13px;
    font-weight: 700;
    background: red;
    color: #fff;
    padding: 3px 10px;
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

.product-links {
    text-align: right;
}

.product-links a{
    display: inline-block;
    margin-left: 5px;
    color: #e1e1e1;
    transition: 0.3s;
    font-size: 17px;
}

.product-links a:hover {
    color: #fbb72c;
}
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,500,300,700);

* {
  font-family: Open Sans;
}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form id="form1" runat="server">
         
        <h2 class="h1"><center><a href="#">Category</a></center></h2>
            <table align="Center">
                <tr style="text-decoration:none;">
                  <th>  <asp:LinkButton ID="LinkButton1" CssClass="buttonClass" runat="server" OnClick="LinkButton1_Click">Comic</asp:LinkButton>&nbsp;|</th>

                   <th> <asp:LinkButton ID="LinkButton2" CssClass="buttonClass" runat="server" OnClick="LinkButton2_Click">Romance</asp:LinkButton>&nbsp;|</th>

                 <th>   <asp:LinkButton ID="LinkButton3" CssClass="buttonClass" runat="server" OnClick="LinkButton3_Click">GRE</asp:LinkButton>&nbsp;|</th>

                   <th> <asp:LinkButton ID="LinkButton4" CssClass="buttonClass" runat="server" OnClick="LinkButton4_Click">CAT</asp:LinkButton>&nbsp;|</th>

                 <th>   <asp:LinkButton ID="LinkButton5" CssClass="buttonClass" runat="server" OnClick="LinkButton5_Click">Thriller</asp:LinkButton>&nbsp;|</th>

                   <th> <asp:LinkButton ID="LinkButton7" CssClass="buttonClass" runat="server" OnClick="LinkButton7_Click">Horror</asp:LinkButton>&nbsp;|</th>

                 <th>   <asp:LinkButton ID="LinkButton8" CssClass="buttonClass" runat="server" OnClick="LinkButton8_Click">Biography</asp:LinkButton>&nbsp;|</th>

                <th>    <asp:LinkButton ID="LinkButton9" CssClass="buttonClass" runat="server" OnClick="LinkButton9_Click">Technology</asp:LinkButton>&nbsp;|</th>

                  <th>  <asp:LinkButton ID="LinkButton10" CssClass="buttonClass" runat="server" OnClick="LinkButton10_Click">Self Help</asp:LinkButton>&nbsp;|</th>

                 <th>   <asp:LinkButton ID="LinkButton11" CssClass="buttonClass" runat="server" OnClick="LinkButton11_Click">Travel</asp:LinkButton>&nbsp;|</th>

                 <th>   <asp:LinkButton ID="LinkButton12" CssClass="buttonClass" runat="server" OnClick="LinkButton12_Click">Movie - Tie - ins</asp:LinkButton>&nbsp;|</th>

                 <th>   <asp:LinkButton ID="LinkButton6" CssClass="buttonClass1" runat="server" OnClick="LinkButton6_Click">View all books</asp:LinkButton></th>
                </tr>
                </table>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="isbnno" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal" Width="728px">
            <ItemTemplate>
                <div class="product-card">
		<div class="badge"><%# Eval("badge") %></div>
		<div class="product-tumb">
		      <asp:ImageButton runat="server" ID="button"  width="80%" height="100%" CssClass="imgButton" ImageUrl='<%# "~/Imgs/"+ Eval("imageurl") %>'  OnMouseOver='<%# "~/Imgs/"+ Eval("imageurl") %>' OnMouseOut='<%# "~/Imgs/"+ Eval("imageurl") %>' CommandArgument='<%# Eval("isbnno") %>' />
		</div>
		<div class="product-details">
			<span class="product-catagory">Genre: <%# Eval("genre") %></span>
			<h4><a href=""><%# Eval("title") %></a></h4>
			<p><%# Eval("description") %></p>
			<div class="product-bottom-details">
				<div class="product-price">Rs. <%# Eval("price") %></div>
			</div><br />
                            <div><center><a href="login.aspx"><img src="Imgs/order.png" height="45px" width="45px"/></a></center</div>

		</div>
	</div>
              
                <br />
             </div>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" SelectCommand="SELECT * FROM [books] WHERE ([Category] = @Category)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Category" QueryStringField="cat" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </form>
    
</asp:Content>
