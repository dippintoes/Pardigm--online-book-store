<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="try1.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 497px;
        }
        .auto-style3 {
            text-align: center;
            font-size: 20px;
            
        }
        .auto-style4 {
            width: 442px;
            text-align: center;
        }
        .auto-style5 {
            background-color: #FF6600;
        }
        .auto-style6 {
            height: 69px;

        }
        .imgButton {
        width: 100%;
        height: 20vw;
        width: 24vw;
    }
          .product-card{
    width: 50%;
    float: left;
    position: relative;
    box-shadow: 0 2px 7px #dfdfdf;
    margin: 50px auto;
    background: #fafafa;
    margin-left: 380px;
}
         .label{
    font-size: 36px;
    float: center;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    margin-top: 350px;
    margin-bottom: 350px;
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
      
        
        <center><asp:Label ID="Label2" cssclass="label" runat="server" Text="View your book details"></asp:Label></center>
        <br /><br /><br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="isbnno" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="product-card">
                <table border="1" class="auto-style1">
                    <tr>
                        <td class="auto-style3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <b> <asp:Label ID="Label3" runat="server" Text='<%# Eval("title") %>'></asp:Label></b>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" rowspan="4">
               <asp:ImageButton runat="server" ID="button"  CssClass="imgButton" ImageUrl='<%# "~/Imgs/"+ Eval("imageurl") %>'  OnMouseOver='<%# "~/Imgs/"+ Eval("imageurl") %>' OnMouseOut='<%# "~/Imgs/"+ Eval("imageurl") %>' CommandArgument='<%# Eval("isbnno") %>' />
                        </td>
                       <td><b>Isbn No.  : </b><asp:Label ID="Label4" runat="server" Text='<%# Eval("isbnno") %>'></asp:Label>
                        </td></b>
                    </tr>
                    <tr>
                        <td><b>More about the book:<br /></b><asp:Label ID="Label5" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Author :</b><asp:Label ID="Label6" runat="server" Text='<%# Eval("author") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><b>Price : </b><asp:Label ID="Label7" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="47px" Text="Place Order" OnClick="btnSend_Click" Width="472px" />
                        </td>
                    </tr>
                </table>
                    </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" SelectCommand="SELECT [isbnno], [title], [price], [imageurl], [author], [description] FROM [books] WHERE ([isbnno] = @isbnno)">
            <SelectParameters>
                <asp:QueryStringParameter Name="isbnno" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
