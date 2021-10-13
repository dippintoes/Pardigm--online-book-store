<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Last.aspx.cs" Inherits="try1.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     .btn-1 {
	border: 3px solid orange;
	color: black;
    font-size:28px;
    float: center;
    margin-top:90px;
    margin-right: 40px;
}
.label{
    font-size: 36px;
    float: center;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    margin-top: 350px;
    margin-bottom: 350px;
}
/* Button 1a */
.btn-1a:hover,
.btn-1a:active {
	color: orange;
	background: black;

}

/* Button 1b */
.btn-1b:after {
	width: 100%;
	height: 0;
	top: 0;
	left: 0;
	background: orange;
}

.btn-1b:hover,
.btn-1b:active {
	color: orange;
    background:black;
}

.btn-1b:hover:after,
.btn-1b:active:after {
	height: 100%;
}
 .button {
  background-color: orange;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;

  margin-top: 60px;
}

 .button:hover {
  opacity: 0.8;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

    <form id="form1" runat="server">
        
       <center>
           <p id="date"></p>
           <br /><br /><br />

        <br /><br />
    
           <br />
           <br />
           <br />
           <br />
           <br />
          
        <br />
        <br />
        <br />
        <br />
        <div>


         <center>   <asp:Button ID="Button2" cssclass="btn btn-1 btn-1a" runat="server" Text="Continue Shopping" OnClick="Button1_Click" /><br /><br />
            </center>

        </div>

           </center>
        </form>
    <script>
        document.getElementById("date").innerHTML = "Checkout Time = " + Date();
    </script>
         
</asp:Content>
