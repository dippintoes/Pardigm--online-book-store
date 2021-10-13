<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="try1.Adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .label {
        color: orange;
        text-align: center;
        font-size: 28px;
        height: 62px;
        background-color:black;
    }
    .login{
        margin-left: 430px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div><br /><br />
           <center> <asp:Label ID="Label1" cssclass="label" runat="server" Text="Admin Panel"></asp:Label></center>
        </div><br /><br />
               <br />
        <asp:Login ID="Login1" runat="server" cssclass=" login" BackColor="#fbfad4" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" DisplayRememberMe="False" FailureText="Your login attempt was not successful. Please try again with valid username and password." Font-Names="Verdana" Font-Size="10pt" Height="555px" Width="605px" InstructionText="Please enter your username and password to log in" OnAuthenticate="Login1_Authenticate">
            <TitleTextStyle BackColor="black" Font-Bold="True" ForeColor="orange" />
        </asp:Login>
    </form>
</asp:Content>
