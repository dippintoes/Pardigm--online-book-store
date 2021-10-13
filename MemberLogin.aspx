<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MemberLogin.aspx.cs" Inherits="try1.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #000000;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #FF6600;
        }
        .auto-style3 {
            text-align: center;
           
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            margin-left: 400px;
            margin-right: 0px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="auto-style3">
        
        </div>
            <br />
            <br />
            <strong>
         <center>  <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Pradigm Members"></asp:Label></center> 
            <br />
            <br />
            </strong>
     
        <div class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Login ID="Login1" runat="server" BackColor="orange" BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style5" DisplayRememberMe="False" Font-Names="Verdana" Font-Size="10pt" Height="283px" InstructionText="Please enter your username and password to log in" LoginButtonText="LOG IN" OnAuthenticate="Login1_Authenticate" PasswordLabelText="PASSWORD:" UserNameLabelText="USER NAME:" Width="593px">
                <LoginButtonStyle BackColor="black" ForeColor="orange" BorderColor="Black" BorderStyle="Solid" />
                <TextBoxStyle BorderColor="#FF6600" />
                <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            </asp:Login>
        </div>
    </form>

</asp:Content>
