<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="try1.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 58%;
        }
        .auto-style3 {
            width: 139px;
        }
        .auto-style4 {
            background-color: #FF6600;
        }
        .imgButton {
        width: 100%;
        height: 20vw;
        width: 24vw;
    }
        .auto-style5 {
            width: 33.33%;
            height: 186px;
            background-color: black;
            color:#FF6600;
            margin-right: 150px;
            margin-left: 20px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            margin-left: 1px;
        }
        .auto-style8 {
            text-align: center;
            height: 22px;
           
        }
        .auto-style9 {
            text-align: center;
            height: 25px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            
            <strong>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Search for your book here!!"></asp:Label>
            <br />
            </strong>
        </div>
         <p>
             Enter your favourite author or genre or category or name of that book !!!!!!!!!!!!!</p>
        <p>
             &nbsp;</p>
        <p>
            &nbsp;</p>
       
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="auhtor, title, genre, category" Height="26px" Width="624px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="SEARCH" Width="295px" />
               
        <br />
        <br />
        <br />
        <br />
               
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="isbnno" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="auto-style8" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table border="1" class="auto-style5">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("isbnno") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                                          <asp:ImageButton runat="server" ID="button"  CssClass="imgButton" ImageUrl='<%# "~/Imgs/"+ Eval("imageurl") %>'  OnMouseOver='<%# "~/Imgs/"+ Eval("imageurl") %>' OnMouseOut='<%# "~/Imgs/"+ Eval("imageurl") %>' CommandArgument='<%# Eval("isbnno") %>' />

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Price
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("author") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("isbnno")%>' CommandName="viewdetails" CssClass="auto-style7" Height="53px" ImageUrl="~/Imgs/viewdetails.png" OnClick="ImageButton1_Click" Width="131px" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" SelectCommand="SELECT [isbnno], [title], [price], [imageurl], [author], [Category] FROM [books] WHERE ([KeywordSearch] LIKE '%' + @KeywordSearch + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="KeywordSearch" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
