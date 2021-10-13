<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ebook.aspx.cs" Inherits="try1.ebook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .btn-1 {
	border: 3px solid orange;
	color: black;
    font-size:28px;
    float: center;
    margin-top:90px;
     margin-bottom: 150px;
    
}
.label{
    font-size: 36px;
    float: center;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    margin-top: 350px;
   
}

/* Button 1a */
.btn-1a:hover,
.btn-1a:active {
	color: orange;
	background: black;

}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">
       
   
    <table>
        <tr>
     <td>
        
          <asp:Button ID="Button2" cssclass="btn btn-1 btn-1a" runat="server" Text="You can download EBOOKS and enjoy hassle - free reading..... CLICK HERE" 
                onclick="Button2_Click" />
               </td>
        </tr>
        
</table>
<p><asp:Label ID="Label2" cssclass="label" runat="server" Text="label"></asp:Label>  </p>

   <br />    
<asp:GridView ID="GridView1" runat="server" Caption="Choose and download from here" 
        CaptionAlign="Top" HorizontalAlign="Justify" 
         DataKeyNames="id" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        ToolTip="Excel FIle DownLoad Tool" CellPadding="4" ForeColor="Black" font-size="X-Large"
        GridLines="None">
        <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Black" ControlStyle-BackColor="Orange"/>
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView> 
     </form>
</asp:Content>
