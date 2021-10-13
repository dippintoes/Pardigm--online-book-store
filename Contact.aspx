<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="try1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function myFunction() {
            var copyText = document.getElementById("myInput");
            copyText.select();
            copyText.setSelectionRange(0, 99999);
            document.execCommand("copy");

            var tooltip = document.getElementById("myTooltip");
            tooltip.innerHTML = "Copied: " + copyText.value;
        }

        function outFunc() {
            var tooltip = document.getElementById("myTooltip");
            tooltip.innerHTML = "Copy to clipboard";
        }
    </script>
    <style>
        body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 10px;
}

/* Create two columns that float next to eachother */
.column {
  float: left;
  width: 50%;
  margin-top: 30px;
  padding: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
        .contact{
            height: 800px;
            color:black;
           
        }
        .tooltip {
  position: relative;
  display: inline-block;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 140px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px;
  position: absolute;
  z-index: 1;
  bottom: 150%;
  left: 50%;
  margin-left: -75px;
  opacity: 0;
  transition: opacity 0.3s;
}

.tooltip .tooltiptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
  opacity: 1;
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
    <div class="container">
  <div style="text-align:center">
    <h2>Contact Us</h2>
    <p>Swing by for a cup of coffee, or leave us a message:</p>
  </div>
  <div class="row">
    <div class="column">
        <div style="margin-top:150px;">
      <iframe scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=520&amp;height=400&amp;hl=en&amp;q=town%20hall%20Aurangabad+(Cannaught%20place)&amp;t=&amp;z=12&amp;ie=UTF8&amp;iwloc=B&amp;output=embed" width="520" height="400" frameborder="0"></iframe> <a href='https://embedmaps.net'>maps generator</a> <script type='text/javascript' src='https://maps-generator.com/google-maps-authorization/script.js?id=92a1574efd1d441a446f0e2b33e0dbaed60930a6'></script>
    </div>
        </div>
    <div class="column">
   
        <br /><br /><br />
    <div class="contact">
        <div id="toSpace">
          <br />


            <asp:Label ID="lblTo" runat="server" Text="To: "></asp:Label>


            <asp:TextBox ID="txtTo" runat="server" value="gosavirutu523@gmail.com" Width="231px"></asp:TextBox>

        </div>
        <br />
        <div id="subjectSpace">
            <asp:Label ID="lblSubject" runat="server" Text="Subject: "></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server" Width="231px"></asp:TextBox>
        </div>
        <br />
        <div id="bodySpace">
            <asp:Label ID="lblBody" runat="server" Text="Write your message below - "></asp:Label>
            <br /><br />  
            <asp:TextBox ID="txtBody" runat="server" Width="431px" Height="300px" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br /><br />
        <div id="attachmentSpace">
            <asp:Label ID="lblAttachment" runat="server" Text="Attachment: "></asp:Label>
            <asp:FileUpload ID="fuAttachment" runat="server" />
        </div>
        <br />
        <div id="accountSpace">
            <asp:Label ID="lblAccountID" runat="server" Text="Your gmail address: "></asp:Label>
            <asp:TextBox ID="txtAccountID" runat="server" Width="231px"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblAccountPwd" runat="server" Text="Your gmail password: "></asp:Label>
            <asp:TextBox ID="txtAccountPwd" runat="server" Width="231px" TextMode="Password"></asp:TextBox>
        </div>
        <br /><br />
        <div id="sendbtnSpace">
            <asp:Button ID="btnSend" runat="server" Text="Send Email" OnClick="btnSend_Click" />
        </div>
        <br />
        </div>
    
    </div>
  </div>
</div>
         </form>
</asp:Content>
