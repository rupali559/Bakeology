<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Bakeology.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .main{
            background-color:#f0f8f0;
        }
        .contain{
            display:flex;
            justify-content:center;
            margin-top:80px;
        }
        .contain p{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size:large;
        }
        .ft-div{
            width: 100%;
            height:180px;
        }
        .imgcls{
            width: 100%;
            height:210px;
            border-bottom: 2px solid rgba(161,109,14,1);
        }
        .head #LinkButton1{
             text-decoration:none;
             color:#CFB989;
        }
        .head{
             margin:-150px 20px 20px 500px;
        }
        .head h2{
             color:#CFB989;
        }
    </style>
    <div class="main">
    <div class="contain">
        <p>Welcome to our online cakes n bakes website! We are a team of passionate bakers and pastry chefs <br />who take great pride in creating delicious, high-quality cakes for all occasions. From classic <br />flavors like vanilla and chocolate to unique combinations like salted caramel and raspberry<br /> lemon, we have something to satisfy every sweet tooth.<br /><br />
         We use only the freshest and finest ingredients to ensure that our cakes taste as good as<br /> they look. Whether you need a cake for a birthday party, wedding, or any other special event,<br /> we are here to help you make it unforgettable.<br /><br />Our easy-to-use website makes ordering a cake a breeze. Simply browse our selection,<br /> choose your favorite flavor and design, and let us handle the rest. We offer fast and reliable<br /> delivery to ensure that your cake arrives fresh and ready to impress.<br /><br />
            Thank you for choosing our online cakes n bakes website. We can't wait to bake something special just for you!
        </p>
    </div>
        <div class="ft-div">
              <img class="imgcls" src="Image/endimg.jpg" />
                <div class="head">
                 <h2>Back to home page</h2>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Home.aspx" Font-Bold="True" Font-Underline="False" ForeColor="#CFB989">ClickHere</asp:LinkButton>
               </div>
        </div> 
        </div>
</asp:Content>
