<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="try1.ProductPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            color: white;
            background-color: darkred;
        }
        .Image {
    width: 24vw;
    height: 350px;
    padding: 2em;
    float: left;
}

.ProductD{
    padding-left: 2em;
    padding-top: 2em;
    width:50%;
    float: left;
}

.Productbody{
    width: 100%;
    height: 400px;
}
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Productbody">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:EBOOK %>' SelectCommand="SELECT isbnno, title, author, price, Category, description, badge, genre, imageurl, Section FROM books WHERE ([isbnno] = @isbnno)" OnSelecting="SqlDataSource1_Selecting">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="isbnno" Name="isbnno" Type="Int32" ></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
          
            <ItemTemplate>
                  <div>
                <asp:Image ID="Image" runat="server" CssClass="Image" ImageUrl='<%# "~/Imgs/"+ Eval("imageurl") %>' />
                <h2 class="ProductD"><%# Eval("title") %></h2>
                      <p class="ProductD"><%# Eval("description") %></p>
                       <p class="ProductD">Category : <%# Eval("Category") %></p>
                       <p class="ProductD">Price : Rs. <%# Eval("price") %></p>
                      <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                      <p><a href="login.aspx"><img src="Imgs/order.png" height="50px" width="50px"/></a></p>
                       
                </div>
            </ItemTemplate>


        </asp:Repeater>
    </div>


</asp:Content>
