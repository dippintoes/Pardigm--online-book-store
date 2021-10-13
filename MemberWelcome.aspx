<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MemberWelcome.aspx.cs" Inherits="try1.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
               
        <div>
        </div>
            </div>
            <h2><asp:Label ID="Label2" runat="server"></asp:Label></h2>
            <br />
            <br />
            <br />
            <h1>Life - time Membership </h1><br /><br />
Want to be one of our Brilliant Books VIPs?  
Become a Brilliant Books Member and enjoy members-only early access to exclusive free E - BOOK's Download and more, plus discounts on all most every purchase you make! 

 <span><br />
<h2>Save at least 10% off everything you buy, every day with our coupon codes</h2><br />
     <br />
<h4>Applies to every purchase, every day.*</h4><br />
<h5>Including unlimited free ebooks, discount offers...</h5>
     </span>
            <br /><br /><br />
<span>
<h3>Save 15% off an annual, unlimited shopping spree with our special limited coupon codes</h3>
<h4>You'll receive 15% off all your purchases on any one day.*</h4>
<h6>Use it whenever you want during your membership year. Use it right away or save it for a special occasion.</h6>
</span>


            <br /><br /><br />

<h2>Exclusive notice of E - Books</h2>
            <br />
<h5>We have a lot free ebooks for you guys, and we have far too many customers who want them. They are offered exclusively to Brilliant Books Members first.</h5>
            <br /><br />
<h2>Members Only email notices</h2>
            <br />
<h5>That's how you'll know about the special events ... and exclusive Brilliant Books' Members only sales ... and our advance access email to pre-order your favorite author's books.</h5>
            <br /><br />
<h2>FREE Brilliant Books tote bag or FREE Brilliant Books Mug</h2><br />
<h5>Our newly redesigned canvas tote bag is ideal for carrying all sorts of stuff.  Like books, for instance.  Or maybe you're into toasty beverages.  In that case, opt for our classic Brilliant Books mug!  If a pitcher's worth a thousand words, a mug's got to be good for a couple of paragraphs.</h5>
            <br /><br />
 

<h5>*The only exceptions are text books, Brilliant Books Membership, and Brilliant Books Monthly subscriptions.</h5><br />
        </div>


     <center>   <asp:Button ID="Button2" runat="server" Text="Shop now" OnClientClick="button_click" OnClick="Button2_Click" BackColor="#FF3300" /></center><br /><br />
        <center>   <asp:Button ID="Button1" runat="server" Text="Unlimited Free E-book Access"  OnClientClick="button_click" OnClick="Button1_Click" BackColor="#FF3300" /></center>

        </form>

</asp:Content>
