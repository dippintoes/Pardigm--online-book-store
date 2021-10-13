<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="try1.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style50 {
            width: 50%;
            height: 550px;
    background-color: rgb(251,250,212);
    margin-left: auto;
    margin-right: auto;
    margin-top: 4em;
    box-shadow: 5px 10px rgba(0, 0, 0, 0.12);
        }
          .label {
        color: orange;
        text-align: center;
        font-size: 28px;
       width: 100%;
        background-color: black;
    }
    .login{
        margin-left: 210px;
    }
    .button {
  background-color: orange;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  
}

 .button:hover {
  opacity: 0.8;
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div class="auto-style50">
        <div>
        </div>
        <p>
            &nbsp;</p>
        <table class="login">
            <tr>
                <td class="label" colspan="3">Login Page</td>
            </tr>
            <tr>
                <td class="auto-style18"><br /><br /><br /><br /><br /><br />UserName</td>
                <td class="auto-style19"><br /><br /><br /><br /><br /><br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><br /><br />Password</td>
                <td class="auto-style22"><br /><br /><br /><br /><br /><br />
                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" Width="220px"></asp:TextBox>
                   <br /><br /><br /><br />
                </td>
              
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" cssclass="button" runat="server" OnClick="Button1_Click" Text="Login" Width="149px" />
                </td>
                <td class="auto-style9">
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Red" OnClick="LinkButton2_Click">New User</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11"><br /><br />
                    <asp:LinkButton ID="LinkButton1" runat="server">Forget Password</asp:LinkButton>
                </td>
                <td class="auto-style12"></td>
            </tr>
        </table>
        </div>
    </form>
</asp:Content>
