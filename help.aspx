<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="try1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 50%;
  margin-top: 0px;
  margin-bottom: 90px;
  
  padding: 0 18px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  margin-top: 270px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
.bottomtitle {
    color: black;
    font-family: 'Merienda', cursive;
    margin-top: 78px;
    text-align: center;
}
.ca-menu {
    padding-top: 50px;
    padding-right: 80px;
    margin-bottom: -200px;
    margin: 20px auto;
    width: 1020px;
    font-family: 'Dosis', sans-serif;
    z-index: 102;
    position: relative;
}

    .ca-menu li {
        width: 230px;
        height: 230px;
        border: 5px solid #fff;
        overflow: hidden;
        position: relative;
        float: left;
        background: #000;
        margin-left: 403px;
        margin-right: 4px;
        margin-top: 95px;
        -webkit-box-shadow: -1px -6px 9px 4px #000000;
        -moz-box-shadow: -1px -6px 9px 4px #000000;
        box-shadow: -1px -6px 9px 4px #000000;
        -webkit-border-radius: 125px;
        -moz-border-radius: 125px;
        border-radius: 125px;
        -webkit-transition: all 400ms linear;
        -moz-transition: all 400ms linear;
        -o-transition: all 400ms linear;
        -ms-transition: all 400ms linear;
        transition: all 400ms linear;
    }

        .ca-menu li:last-child {
            margin-right: 0px;
            margin: 0 auto 0 376px;
        }

        .ca-menu li a {
            text-align: left;
            width: 100%;
            height: 100%;
            display: block;
            color: orange;
            position: relative;
            -moz-box-shadow: 0px 0px 3px #000000;
            -webkit-box-shadow: 0px 0px 3px #000000;
            box-shadow: 0px 0px 3px #000000;
        }

.ca-main img {
    height: 80px;
    left: 50%;
    margin-left: -78px;
    opacity: 1;
    position: absolute;
    text-align: center;
    top: 60px;
    transform: rotate(0deg);
    width: 170px;
}

.ca-sub {
    text-align: center;
    color: orange;
    font-size: 34px;
    position: absolute;
    height: 80px;
    width: 170px;
    left: 50%;
    margin-left: -85px;
    top: 60px;
    opacity: 0;
    margin-top: 12px;
    -webkit-transition: all 400ms linear;
    -moz-transition: all 400ms linear;
    -o-transition: all 400ms linear;
    -ms-transition: all 400ms linear;
    transition: all 400ms linear;
    - transform: rotate(0deg); /* IE 9 */
    transform: rotate(0deg); /* Chrome, Safari, Opera */
    transform: rotate(0deg); /* Standard syntax */
}

.ca-menu li:hover {
    background: #000;
    border-color: #fff;
    -webkit-transform: rotate(360deg);
    -moz-transform: rotate(360deg);
    -o-transform: rotate(360deg);
    -ms-transform: rotate(360deg);
    transform: rotate(360deg);
    box-shadow: 0 45px 50px -50px #fff;
}

    .ca-menu li:hover .ca-main {
        display: none;
    }

    .ca-menu li:hover .ca-sub {
        opacity: 1;
    }
    .card a{
        text-decoration:none;
        color:white;
    }
</style>
      <meta name="generator" content="Bluefish 2.2.4" / >
<link href='https://fonts.googleapis.com/css?family=Merienda' rel='stylesheet' type='text/css' >
<link href='https://fonts.googleapis.com/css?family=Courgette' rel='stylesheet' type='text/css' >
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div>

    <ul class="ca-menu">
    <li>
    <a href="#">
    <div class="ca-content"></div> 
       <h2 class="ca-main"><img src="Imgs/LOGO.jpeg"></h2>
       <h3 class="ca-sub">Pradigm</h3>
      </a></li>
      </ul>
     
  
</div>
    <div class="about-section">
    <h1>About Us</h1>
  <p style="color:black; font-size:24px;"><b>Prada for paradigmers</b></p>
  <p>We are thriving to make reading easier and possible for every bibliophile out there!!!!</p>
        </div>
<h2 style="text-align:center">Our Team</h2><br /><br />
<div class="row">
  <div class="column">
    <div class="card">
        <center>
      <img src="/Imgs/1.jpeg" alt="Rutuja" style="width:250px; height:250px; border-radius: 100%;"></center>
      <div class="container">
        <h2>Rutuja Nandkumar Gosavi</h2>
        <p class="title">CEO & Founder</p>
        <p>IT Engineer</p>
        <p>gosavirutu523@gmail.com</p>
        <p><button class="button"><a href="mailto:gosavirutu523@gmail.com">Contact</a></button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <center>
      <img src="/Imgs/2.jpeg" alt="Riya" style="width:250px; height:250px; border-radius: 100%;"></center>
      <div class="container">
        <h2>Riya Sandeep Gangapurwala</h2>
        <p class="title">CEO & Founder</p>
        <p>IT Engineer</p>
        <p>riya.gangapurwala@gmail.com</p>
        <p><button class="button"><a href="mailto:riya.gangapurwala@gmail.com">Contact</a></button></p>
      </div>
    </div>
  </div>
  
  

       <div>

<p class="bottomtitle"> Powered by <b> Paradigm & co. </b> </p>

 </div>
    

</asp:Content>
