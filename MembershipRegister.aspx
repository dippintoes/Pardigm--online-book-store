<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MembershipRegister.aspx.cs" Inherits="try1.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style50 {
            width: 80%;
            height: 650px;
    background-color: rgb(251,250,212);
    margin-left: auto;
    margin-right: auto;
    margin-top: 1em;
    box-shadow: 5px 10px rgba(0, 0, 0, 0.12);
        }
          .label {
        color: orange;
        text-align: center;
        font-size: 28px;
        padding-top: 35px;
        height: 62px;
        background-color: black;
    }
    .login{
        margin-left: 450px;
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
        &nbsp;&nbsp;<h1 class="label"> Registration Form </h1></div>
        <div class="tab"><table class="auto-style3">
            <tr>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
        </table>
        <table class="login">
            <tr>
                <td class="auto-style52"><br /><br />UserName</td>
                <td class="auto-style52">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate><br /><br /><br />
                            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
                            &nbsp; &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Cannot be empty"></asp:RequiredFieldValidator>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br /><br />
                </td>
            </tr>
            <tr>
                <td class="auto-style53">Password</td>
                <td class="auto-style53"><br />
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Cannot be empty"></asp:RequiredFieldValidator>
               <br /><br />
                    </td>
            </tr>
            <tr>
                <td class="auto-style54">ReType Password</td>
                <td class="auto-style54"><br /><br />
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Cannot be empty"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Must match" ForeColor="Red"></asp:CompareValidator>
               <br /><br />
                    </td>
            </tr>
            <tr>
                <td class="auto-style55">Mobile Number</td>
                <td class="auto-style55"><br /><br />
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Cannot be empty"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid mobile number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
              <br /><br />
                    </td>
            </tr>
            <tr>
                <td class="auto-style56">Email Id</td>
                <td class="auto-style56"><br />
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Cannot be empty"></asp:RequiredFieldValidator>
                <br /><br /><br /><br />
                </td>
            </tr>
           
            
               <tr>
                <td class="auto-style2">
                    </td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="button" Height="40px" Width="99px" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
      </div>
        </div>
    </form>
</asp:Content>
