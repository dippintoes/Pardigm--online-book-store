<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="try1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<style>
body {
    margin: 0px auto;
    width: 100%;
    background-color: #d8d3cd;
}
#DropDownList1 {
   color: black;
font-size: 20px;
padding: 5px 10px;
border-radius: 5px;
background-color: orange;
font-weight: bold;
}

    #DropDownList1:hover
    {
        opacity:0.2;
		color:white;
    }
    .imgButton {
        width: 100%;
        height: 20vw;
        width: 24vw;
    }
	 .hover:hover
{
    background: white;
    border: solid 1px grey;
    font-family: Arial, sans-serif;
    font-size: 12px;
    font-weight: bold;
    color: Red;   
    height: 25px;
    transition: all .5s;
    transform: scale(1.2);

}

#PoductTable{
    text-align:center;
}

.repeaterTable {
   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    max-width: 800px;
    margin: auto;
    text-align: center;
    font-family: arial;
    padding-top: 50px;
    float: left;
}

.hiddenCost{
    visibility:hidden;
}

.hover:hover .hiddenCost {
    visibility: visible;
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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>pradigm</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-3.4.1.js"></script>
	
    </head>
<body>
        <form id="form1" runat="server">
        <div class="topnav">
	    <marquee width="40%" direction="left"><div class="sale"><a href="MemberLogin.aspx">SALE UPTO 70% OFF.SPECIAL OFFER FOR MEMBERSHIP HOLDERS.&nbsp;SHOP NOW</a></div></marquee>
			<a href="help.aspx">About us</a> 
		<a href="Adminlogin.aspx">Admin</a>
			<a href="Membership.aspx">Membership</a>
			
		</div>
	<section id="brand">
					<img src="Imgs\LOGO.jpeg" height="150px" width="200px">
					<h2><font color="#cc7722">A Prada for paradigm</font></h2>
					<div class="search-container">
					      
					       <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="SEARCH" Width="231px" />
			        </div>
	</section>
	<div class="home" id="Home">
		<div class="rc_nav" id="centered_nav">
          <a href="#Home">Home</a>
		  <a href="#Just-arrived">Just-arrived</a>
		  <a href="Best-sellers.aspx">Best-sellers</a>
       <a href="categories.aspx">Categories</a>
		  <a href="contact.aspx">Contact us at</a>
          <a href="#footer" title="Menu" style="font-size:18px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
        <div class="slideshow-container">
			  <div class="mySlides1">
			    <img src="https://gladreaders.com/wp-content/uploads/2018/10/Da-Vinci-Code-Paperback.jpg" style="width:100%">
			  </div>
			  <div class="mySlides1">
			    <img src="https://d3525k1ryd2155.cloudfront.net/web/zinn_peoples_history.jpg" style="width:100%">
			  </div>
			  <div class="mySlides1">
			    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/PediaPress_Hardcover_standing01.jpg/320px-PediaPress_Hardcover_standing01.jpg" style="width:100%">
			  </div>
			  <div class="mySlides1">
			    <img src="https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781534462601/the-dark-artifices-the-complete-paperback-collection-9781534462601_lg.jpg" style="width:100%">
			  </div>
		  <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
		  <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
		</div>
    </div>
	


<div class="new" id="Just-arrived">
		<div class="rc_nav" id="centered_nav">
          <a href="#Home">Home</a>
		  <a href="#Just-arrived">Just-arrived</a>
		  <a href="Best-sellers.aspx">Best-sellers</a>
       <a href="categories.aspx">Categories</a>
		  <a href="contact.aspx">Contact us at</a>
          <a href="#footer" title="Menu" style="font-size:18px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>
	<h1>


	    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" SelectCommand="SELECT [Section] FROM [section] WHERE ([Section] = @Section)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Just - Arrived" Name="Section" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:EBOOK %>' SelectCommand="SELECT isbnno, Category, title, author, price, imageurl FROM books WHERE (Section = @Section)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Section" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>

       

	</h1>
	<h2>

	    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Section" DataValueField="Section">
        </asp:DropDownList>

	</h2>
	 <div class="ProductTable" style="align-content:center">
	<p>

	    <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" Font-Names="Times New Roman" ForeColor="Black" DataSourceID="SqlDataSource2" RepeatColumns="4" RepeatDirection="Horizontal" DataKeyField="isbnno" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">
            <ItemTemplate>
				<table style =" color: black; font-size:20px; margin-top:30px; margin-bottom:30px;">
					<tr>
                    <td style =" color: black; font-size:25px; text-decoration: underline; margin-bottom:30px;"><b><center><%# Eval("Category", "{0:c}") %></center></b></style></td>
                </tr>
                <tr>
                    <td colspan="3" class="hover">
               <asp:ImageButton runat="server" ID="button"  CssClass="imgButton" ImageUrl='<%# "~/Imgs/"+ Eval("imageurl") %>'  OnMouseOver='<%# "~/Imgs/"+ Eval("imageurl") %>' OnMouseOut='<%# "~/Imgs/"+ Eval("imageurl") %>' CommandArgument='<%# Eval("isbnno") %>' OnClick="button_Click" />
                    </td>
                 </tr>
                <div class="hiddenCost">
                <tr>
                    <td ><center><b><%# Eval("title", "{0:c}") %></b></center></td>
                </tr>
                <tr> 
                    
                    <td style="color:darkred"><center><i><%# Eval("author", "{0:c}") %></i></center></style></td>
                   
                </tr>
					<tr>
						 <td><center>Rs. <%# Eval("price", "{0:c}") %></center></td>
					</tr>
                </div>
						
            </table>
          </ItemTemplate>
        
		</asp:DataList>

	</p>
      </div>    
</div>
    
    <br />
    
       
<section class="footer" id="footer">
        <footer class="footer-distributed">

			<div class="footer-left">

				<h3>PRADIGM</span></h3>

				<p class="footer-links">
					<a href="#Home" class="link-1">Home</a>
					
					<a href="#Just-arrived">Just-arrived</a>
				
					<a href="Best-sellers.aspx">Best seller</a>

           <a href="categories.aspx">Categories</a>
				
					<a href="contact.aspx">Contact us at</a>
					
					<a href="help.aspx">About us</a>
				</p>

				<p class="footer-company-name">Pradigm © 2015</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>149 S. Cannought Place</span> Aurangabad, Maharashtra</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p><a href="tel:7057856717">+1.555.555.5555</a></p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:bibliophiles@gmail.com">support@pradigm.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					By a reader for the readers<br>Made with lots love and coffee
				</p>

				<div class="footer-icons">

					
					<a href="#"><img src="https://i.pinimg.com/originals/2e/20/0c/2e200c844ea18ccdc9c582329dfcb92e.jpg" width="48" height="48" alt="" /></a>
					<a href="#"><img src="https://www.kindpng.com/picc/m/19-194907_splash-whatsapp-icon-png-image-free-download-searchpng.png" width="48" height="48" alt="" /></a>
					<a href="#"><img src="https://ih1.redbubble.net/image.565125817.5926/poster,840x830,f8f8f8-pad,1000x1000,f8f8f8.jpg" width="48" height="48" alt="" /></a>
				</div>

			</div>

		</footer>
</section>
     <script src="Scripts\script.js"></script>
        </form>
</body>
</html>
