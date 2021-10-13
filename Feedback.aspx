<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="try1.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
      .auto-style1 {
            width: 100%;
            height: 411px;
        }
        .auto-style2 {
            width: 331px;
            font-size: x-large;
            height: 316px;
            background-color: #CCCCCC;
        }
        
.starempty
        {
            background-image: url(stars/starempty.png);
            width: 50px;
            height: 50px;
        }
.starfilled
        {
            background-image: url(stars/starfilled.png);
            width: 50px;
            height: 50px;
        }
 .button {
  background-color: orange;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  margin-top: 20px;
  margin-left: 680px;
}

 .button:hover {
  opacity: 0.8;
}
.starwaiting
        {
            background-image: url(stars/starwaiting.png);
            width: 50px;
            height: 50px;
        }
        .auto-style3 {
            width: 388px;
            height: 316px;
        }
        .auto-style4 {
            height: 30px;
            text-align: center;
            background-color: #000000;
        }
        .auto-style9 {
            color: #FF6600;
            font-size: x-large;
            background-color: #000000;
        }
        .auto-style11 {
            background-color: #CCCCCC;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style14 {
            color: #FFFFFF;
        }
        .auto-style15 {
            background-color: #CCCCCC;
            height: 887px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
    <form id="form1" runat="server" class="auto-style15">
         <p style="color:black; font-size:24px;">Time of checkout: <span id="datetime"></span></p>

<script>
    var dt = new Date();
    document.getElementById("datetime").innerHTML = (("0" + dt.getDate()).slice(-2)) + "." + (("0" + (dt.getMonth() + 1)).slice(-2)) + "." + (dt.getFullYear()) + " " + (("0" + dt.getHours()).slice(-2)) + ":" + (("0" + dt.getMinutes()).slice(-2));
</script>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p style="font-size:28px; "><strong><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payment Successfull!!!!!!!!!!</b></strong></p><br />
        <br />
        <br />
       <br /><br />
           <center><asp:Label ID="Label2" runat="server" Text="Please leave your valuable feedback!!" CssClass="auto-style9"></asp:Label></center>
        </div><br /><br /><br />
                <center><asp:Button ID="Button2" runat="server" Text="Login for membership holders" PostBackUrl="~/MemberLogin.aspx" BackColor="Orange" Font-Bold="True" ForeColor="Black" /></center>
        <br /><br />
           <center>  <a href="Home.aspx"><asp:Label ID="Label1" runat="server" CssClass="label" Text="Continue Shopping"></asp:Label></a> </center>  
<br />
                        <center><asp:Button ID="Button3" runat="server" Text="Logout" BackColor="Orange" Font-Bold="True" ForeColor="Black" onclick="Button3_Click" /></center>

        <br class="auto-style11" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br class="auto-style11" />
        <br class="auto-style11" />
        <table class="auto-style1" align="center" border="1">
            <tr>
                <td class="auto-style2"><strong>Your Rating for our website!</strong></td>
                <td class="auto-style3">
                    <ajaxToolkit:Rating ID="Rating1" runat="server" CurrentRating="1" MaxRating="5" AutoPostBack="true" StarCssClass="starempty" FilledStarCssClass="starfilled" WaitingStarCssClass="starwaiting" EmptyStarCssClass="starempty" OnClick="Rating1_Click" >
                    </ajaxToolkit:Rating>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br class="auto-style14" />
                    <span class="auto-style12"><strong><span class="auto-style14">Th</span><span class="auto-style13">ank you for your valuable feedback!!!!!!!!!!!</span></strong></span></td>
                   

            </tr>
        </table>
       
        </form>
   

</asp:Content>
