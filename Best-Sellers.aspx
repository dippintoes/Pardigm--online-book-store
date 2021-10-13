<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Best-Sellers.aspx.cs" Inherits="try1.Best_Sellers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	<title>Best-sellers</title>
    <style>
        .ddl {
   color: black;
font-size: 20px;
padding: 5px 10px;
border-radius: 5px;
background-color: orange;
font-weight: bold;
margin-top: 20px;
}

    .ddl:hover
    {
        opacity:0.2;
		color:white;
    }
        .container{ 
 float: left;
  height: auto; width: 600px;
  margin: 5% auto;
  margin-right: 65px;
  text-align: center;
  font-family:'Oswald', sans-serif;
  font-weight:200px;
  background: black;
  color: orange;
  -webkit-transition: 1s;
  -moz-transition: 1s;
   transition: 1s;
}

.price {
  height: 50px; width: 150px;
  overflow: hidden;
  text-align: center;
  font-weight:100;
  background: black;
  color: #a9c6ed;
  float:left;
  cursor: pointer;;
  transition: all .5s ease,
}
  .price a{
      color: red;
      text-decoration: none;
  }
  .price a:hover{
      color:black;
      background-color:orange;
  }
.price:hover{
    background: #5eaaa8;
    color: black;
}
.price:hover .shop:first-child {
    margin-top: -50px;
  }
.shop{
    height: 50px; width: 150px;
    line-height: 50px;
    font-size: 90%;
    transition: all .2s ease-out;
  }

.image {
  height: 300px; width: 600px;
  overflow: hidden;
  text-align: center;
  font-weight:100;
  background: black;
  float:left;
  cursor: pointer;;
  transition: 1s;
  -webkit-transition: 1s;
}
 .image:hover {
    background: orange;
    color: black;
}
.image:hover .text:first-child {
    margin-top: -300px;
  }
.text{
    height: 300px; width: 600px;;
    line-height: 150%;
    line-width:50px;
    font-size: 100%;
    transition: all .2s ease-out;
    color: black;
  }
.fa {font-size:180%;text-shadow:1px 1px 0px#000;}
.brand {
  height: 50px; width: 450px;
  text-align: center;
  background: orange;
  color: black;
  float:left;
  line-height: 50px;
  font-size: 100%; 
  font-family:'Oswald', sans-serif;}


.flip-container{
  text-align:center;
  margin: 0 auto;
  -webkit-perspective: 1000;
  -moz-perspective: 1000;
  float: left;
  font-size:100%;
  cursor:pointer;
}

.flip-container:hover .flipper {
  -webkit-transform: rotateY(180deg);
  -moz-transform: rotateY(180deg);
}

.flipper {
  -webkit-transition: 0.6s;
  -webkit-transform-style: preserve-3d;
  -moz-transition: 0.6s;
  -moz-transform-style: preserve-3d;
  position: relative;
}

.front, .back {
  -webkit-backface-visibility: hidden;
  -moz-backface-visibility: hidden;
  position: absolute;
  top: 0;
  left: 0;
}
.front {
  background: black;
  color: orange;
  z-index: 1;
  line-height:300px;
  -webkit-box-shadow: inset 0px 4px 0px 0px rgba(32,64,106,0.4);
-moz-box-shadow: inset 0px 4px 0px 0px rgba(32,64,106,0.4);
box-shadow: inset 0px 4px 0px 0px rgba(32,64,106,0.4);
}
.flip-container, .front, .back {
  width: 100px;
  height: 100px;
  line-height:100px;
  
}
.back {
background: black;
color: orange;  -webkit-transform: rotateY(-180deg);
-moz-transform: rotateY(-180deg);
}
.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
}

/* The actual popup (appears on top) */
.popup .popuptext {
  visibility: hidden;
  width: 160px;
  background-color: white;
  color: black;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class when clicking on the popup container (hide and show the popup) */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 3s
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;}
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}
@media (min-width: 320px) and (max-width: 767px){
.rc_nav a {
 display: inline-block;
 margin-right: -4px; 
 color: orange;
 padding: 10px 30px;
}
.container{ 
 float: center;
  height: auto; width: 90%;
  margin: 10% auto;
  margin-left: 40px;
  text-align: center;
  font-family:'Oswald', sans-serif;
  font-weight:200px;
  background: black;
  color: orange;
  -webkit-transition: 1s;
  -moz-transition: 1s;
   transition: 1s;
}

}
    </style>
    <script>
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Oswald:700|Droid+Serif:400,700italic" rel="stylesheet" type="text/css" />
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>
	
	    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EBOOK %>" SelectCommand="SELECT [Section] FROM [section] WHERE ([Section] = @Section)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Best - Seller" Name="Section" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:EBOOK %>' SelectCommand="SELECT isbnno, Category, title, author, price, imageurl , description FROM books WHERE (Section = @Section)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Section" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>

	    <center><asp:DropDownList ID="DropDownList1" CssClass="ddl" runat="server" DataSourceID="SqlDataSource1" DataTextField="Section" DataValueField="Section">
        </asp:DropDownList></center>

     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="2" RepeatDirection="Horizontal" DataKeyField="isbnno" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">
            <ItemTemplate>
    <div class="container">
	  <div class="price">
	  <div class="shop"><a href="login.aspx"><img src="https://img.icons8.com/plasticine/2x/favorite-cart.png" height="55px" width="55px"></div>
	   <div class="popup" onclick="myFunction()"><br />Rs. <%# Eval("price", "{0:c}") %>
  <span class="popuptext" id="myPopup">Checkout</span></a>
</div> 
	  </div>
		  <div class="brand" style =" color: black; font-size:25px; text-decoration: underline; margin-bottom:30px;"><b><center><%# Eval("Category", "{0:c}") %></center></b></style></div>
		  <div class="container">
		    <div class="image">
		    <div class="text">
		      <asp:ImageButton runat="server" ID="button"  width="80%" height="100%" CssClass="imgButton" ImageUrl='<%# "~/Imgs/"+ Eval("imageurl") %>'  OnMouseOver='<%# "~/Imgs/"+ Eval("imageurl") %>' OnMouseOut='<%# "~/Imgs/"+ Eval("imageurl") %>' CommandArgument='<%# Eval("isbnno") %>' />
		    </div>
		    <div class="text">
		      <p><b><%# Eval("title", "{0:c}") %></b><br/><br><b>Author:</b><br><i><%# Eval("author", "{0:c}") %></i><br><br/><b>Price:</b><br><%# Eval("price", "{0:c}") %><br /><br /><b>Description: </b><%# Eval("description", "{0:c}") %></p>
		     </div>
		  </div>
        </div>
        </div>
                 </ItemTemplate>
		</asp:DataList>
        </form>

</asp:Content>
