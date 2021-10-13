<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="pdfupload.aspx.cs" Inherits="try1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .label{
    font-size: 36px;
    float: center;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    margin-top: 350px;
    margin-bottom: 350px;
}
    .btn-1 {
	border: 3px solid orange;
	color: black;
    font-size:28px;
    float: center;
    margin-top:90px;
    margin-right: 40px;
}

    .btn-1a:hover,
.btn-1a:active {
	color: orange;
	background: black;

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
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
       <center>
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <asp:Label ID="Label1" cssclass="label" runat="server" Text="Upload PDF'S"></asp:Label></center> 
        <br />
         <div>  
   <table>
    <tr>
    <td> 
        Select File
        </td>
        <td>
        <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Select Only Excel File" />
        </td>
        <td> 
        <asp:Button ID="Button1" cssclass="btn btn-1 btn-1a" runat="server" Text="Upload" onclick="Button1_Click" />
        </td>
        <td>
        
            <asp:Button ID="Button2" cssclass="btn btn-1 btn-1a" runat="server" Text="View Files" 
                onclick="Button2_Click" />
               </td>
        </tr>
        
</table>
<p><asp:Label ID="Label2" runat="server" Text="label"></asp:Label>  </p>

   <br />    
<asp:GridView ID="GridView1" runat="server" Caption="Excel Files " 
        CaptionAlign="Top" HorizontalAlign="Justify" 
         DataKeyNames="id" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        ToolTip="Excel FIle DownLoad Tool" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Blue"/>
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView> 
    </div>
        <br /><br />
        <asp:Button ID="Button3" runat="server" CssClass="button" OnClick="Button3_Click" Text="Leave Admin" Width="231px" />
        </form>
</asp:Content>
