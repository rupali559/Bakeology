<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="Bakeology.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title></title>
    <style>
        .icon{
            float:right;
            margin-top:22px;
            
        }
        .nav-bar{
            float:right;
            font-size:x-large;
        }
        .logo-nav{
            background-color:#ffffff;
            border-block:hidden;
        }
        .icon button{
            margin-left:-4px;
            border-radius:8px;
            border-color:#ffffff;
        }
            
        #TextBox1{
            border-radius:8px;
            border-color:#ffffff;

        }
        .bigimage{
            display: flex;
            align-items: center;
        }
        .header{
            margin-top:-80px;
            margin-left:-1500px;
        }
        .header h1{
            color:#f1a6a8;
        }
        .container{
            max-width:1200px;
            margin:auto;
            overflow:auto;
            background-color:#edf6f5;
        }
         img:hover{
           background-color:aliceblue;
        }
        .gallery{
            margin:5px;
            float:left;
            width:390px;
        }
        .gallery img{
            width:100%;
            height:300px;
            border-radius:8px;
            padding:70px;
        }
        
       .gallery:hover{
           transform:scale(1.2);
           
       }
       .gallery h1{
           margin-top:-250px;
           padding:90px;
           color:aliceblue;
           
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="logo-nav">
                <img class="logo" src="Image/LOGO.png" width="70" height="70" />
                <div class="icon">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Search here"></asp:TextBox>
                   <button type="submit"><i class="fa fa-search"></i></button>
                </div>

                
                <div class="nav-bar">
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                        <DynamicHoverStyle ForeColor="#660066" />
                        <DynamicMenuStyle BackColor="#EDF6F5" BorderStyle="None" HorizontalPadding="20px" />
                        <Items>
                            <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                            <asp:MenuItem Text="Products" Value="Products">
                                <asp:MenuItem Text="Cake" Value="Cake"></asp:MenuItem>
                                <asp:MenuItem Text="Pastries" Value="Pastries"></asp:MenuItem>
                                <asp:MenuItem Text="Macrons" Value="Macrons"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Cart" Value="Cart"></asp:MenuItem>
                            <asp:MenuItem Text="Account" Value="Account"></asp:MenuItem>
                            <asp:MenuItem Text="About Us" Value="About Us"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle ForeColor="#FF9891" Font-Bold="True" />
                        <StaticMenuItemStyle Font-Bold="True" ForeColor="#EC0890" HorizontalPadding="20px" ItemSpacing="30px" />
                        <StaticMenuStyle VerticalPadding="20px" HorizontalPadding="50px" />
                    </asp:Menu>
                </div>
                </div>
           
                <div class="bigimage"><img src="Image/middle.jpg" />
                    <div class="header">
                        
                        <h1>CAKES</h1>
                        <p>Any celebration, whether a cozy gathering or an extravagent party, is incomplete without cake! We offer a wide range <br />of handcrafted speciality cakes that are a treat to the eyes and also the taste buds.</p>
                        </div>
               
              </div>
          <div class="container">
            <div class ="gallery">
                <img src="Image/Cake.jpg" /><h1>Cake</h1></div>
            <div class ="gallery">
                <img src="Image/maccc.jpg" /><h1>Macrons Cake</h1></div>
            <div class ="gallery">
                <img src="Image/pastries.jpg" /><h1>Pastries</h1></div>
            <div class ="gallery">
                <img src="Image/Macarons.jpg" /><h1>Macrons</h1></div>
               </div>
            </div>
       
            
        
    </form>
</body>
</html>
