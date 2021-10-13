<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="try1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style4 {
            color: #FFFFFF;
            background-color: #993333;
        }
        .auto-style5 {
            color: #FFFFFF;
            background-color: #993333;
            margin-top: 0;
        }
        .GridViewAdmin{
    width:100%;
}
        .button {
  background-color: orange;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-left: 240px;
}

 .button:hover {
  opacity: 0.8;
}

 button,
[type="button"],
[type="reset"],
[type="submit"] {
    -webkit-appearance: button;
    font-family: inherit; /* 1 */
    font-size: 100%; /* 1 */
    line-height: 1.15; /* 1 */
    margin: 0; /* 2 */
}

.GridViewEditRow input[type=text] {
    width: 90%;
}
/* size textboxes */
.GridViewEditRow select {
    width: 90%;
}
/* size drop down lists */

.AdminTable{
    width: 100%;
}

.AdminTable input[type=text] {
        width: 90%;
    }
/* size textboxes */
.AdminTable select {
        width: 90%;
    }

.lblError{
    color:red;
}

         .auto-style7 {
             margin-right: 0px;
         }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
   
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" DeleteCommand="DELETE FROM [books] WHERE [isbnno] = @isbnno" InsertCommand="INSERT INTO [books] ([isbnno], [title], [author], [price], [Category], [description], [badge], [genre], [imageurl],[Section]) VALUES (@isbnno, @title, @author, @price, @Category, @description, @badge, @genre, @imageurl,@Section)" SelectCommand="SELECT * FROM [books]" UpdateCommand="UPDATE [books] SET [title] = @title, [author] = @author, [price] = @price, [Category] = @Category, [description] = @description, [badge] = @badge, [genre] = @genre, [imageurl] = @imageurl , [Section] = @Section WHERE [isbnno] = @isbnno">
            <DeleteParameters>
                <asp:Parameter Name="isbnno" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="isbnno" Type="Int32" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="badge" Type="String" />
                <asp:Parameter Name="genre" Type="String" />
                <asp:Parameter Name="imageurl" Type="String" />
                 <asp:Parameter Name="Section" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                 <asp:Parameter Name="isbnno" Type="Int32" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="badge" Type="String" />
                <asp:Parameter Name="genre" Type="String" />
                <asp:Parameter Name="imageurl" Type="String" />
                <asp:Parameter Name="Section" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>




        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" SelectCommand="SELECT DISTINCT [Category] FROM [books]"></asp:SqlDataSource>




        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" SelectCommand="SELECT DISTINCT [Section] FROM [books]"></asp:SqlDataSource>




        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="isbnno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="isbnno" HeaderText="isbnno" ReadOnly="True" SortExpression="isbnno" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:TemplateField HeaderText="Category" SortExpression="Category">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="badge" HeaderText="badge" SortExpression="badge" />
                <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                <asp:BoundField DataField="imageurl" HeaderText="imageurl" SortExpression="imageurl" />
                <asp:TemplateField HeaderText="Section" SortExpression="Section">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Section") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Section") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

         <table class="AdminTable">
                <tr>
                    <th>ISBN No.</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Author</th>
                    <th>Category</th>
                    <th>Image URL</th>
                    <th>Badge</th>
                    <th>Description</th>
                    <th>Genre</th>
                    <th>Section</th>
                </tr>
                <tr>       
                    <td><asp:TextBox ID="txtisbnno" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="txttitle" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="txtprice" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="txtauthor" runat="server"></asp:TextBox></td>
                    <td>  
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Category" DataValueField="Category">
                        </asp:DropDownList>
                    </td>
                    <td><asp:TextBox ID="txtimageurl" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="txtbadge" runat="server"></asp:TextBox></td>
                     <td><asp:TextBox ID="txtdescription" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="txtgenre" runat="server"></asp:TextBox></td>
                     <td>  
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Section" DataValueField="Section">
                        </asp:DropDownList>
                    </td>
                    <td><asp:Button ID="ButtonAdd" runat="server" Text="Add" OnClick="ButtonAdd_Click" CssClass="auto-style4" /></td>
                    
                </tr>
            </table>

         <asp:Label ID="lblError" runat="server" Text="" CssClass="lblError"></asp:Label>

        <br /><br /> <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Leave Admin" Width="231px" />
    </form>
    

   



   
   
</asp:Content>
