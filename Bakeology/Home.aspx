

<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bakeology.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /*{
            margin:0;
            padding:0;
        }*/
        .gallery img{
            display:block;
            height:300px;
            width:300px;
            overflow:auto;
            padding:40px 20px;
            border-radius:8px;
            
            
            
        }
        .gallery{
            background-color:rgba(0,0,0,0.6);
            /*margin-top:100px;*/
            padding:30px 35px;
            border-radius:6px;
        }
        .gallery li{
            list-style:none;
        }
        ul li {
            display:inline-block;
            position:relative;
           
        }
        h1{
             margin:-150px 20px 20px 500px;
             font-family:'Times New Roman', Times, serif;
        }
        ul h1{
            color: #CFB989;
        }
        .gallery ul{
            background-color:#fff;
        }
        .last{
            background-image:url("background.png");
        }
        .ft-div{
            width: 100%;
            height:200px;
            margin-top:20px;
        }
        .imgcls{
            width: 100%;
            height:210px;
        }
        .head #LinkButton1{
            text-decoration:none;
            color:#CFB989;
        }
        li p{
            color:#499fa4;
            font-size:medium;
        }
        .head{
            margin:-150px 20px 20px 500px;
        }
        .head h2{
            color:#CFB989;
        }
        #box{
    margin-top: 50px;
}
#box .card{
    box-shadow: 0px 0px 5px black;
    margin-top: 10px;
    transition: 0.5s ease;
    cursor: pointer;
}
#box .card:hover{
    transform: translateY(-10px);
}
        /* banner */
        .banner{
            width: 100%;
            height: 60vh;
            display: flex;
            background-image: linear-gradient(rgba(237,228,223,255),rgba(240,248,240,255)), url(./image/banner2.png);
            background-size: cover;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
            box-shadow: 0px 0px 10px black;
            margin-top: 50px;
        }
        .banner .img{
            flex: 1 1 400px;
            
        }
        .banner .img img{
            width: 100%;
        }
        .banner .content{
            flex: 1 1 400px;
            margin-left: 60px;
            margin-top: 60px;
        }
        .banner .content h3{
            color: rgba(161,109,14,1);
            font-weight: bold;
        }
        .banner .content h2{
            font-size: 50px;
            color: rgba(161,109,14,1);
            font-weight: bold;
            text-shadow: 1px 1px 1px black;
        }
        .banner .content p{
            color: rgba(161,109,14,1);
        }
        #btnorder button{
            width: 150px;
            height: 32px;
            letter-spacing: 5px;
            background-color: rgba(161,109,14,1);
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
           
        }
        #btnorder button a{
             text-decoration: none;
             color: white;
        }
       /* @media screen and (max-width:800px){
            .banner .content h3{
                font-size: 50px;
            }
        }
        @media screen and (max-width:855px){
            .banner{
                height: 100vh;
            }
        }*/
        /* banner end */

        /*Image gallery*/
        #gallery{
            /*margin-top:20px;*/
            height:400px;
            background-image: linear-gradient(rgba(237,228,223,255),rgba(240,248,240,255),rgba(73, 159, 164));
           
        }
        #gallery h2{
            text-align:center;
            font-weight:800;
            margin-top: 80px;
            color: rgba(161,109,14,1);
            text-shadow: 1px 1px 1px black;
            border-bottom: 2px solid rgba(161,109,14,1);
        }
        #gallery .card{
            height:250px;
            width:280px;
            border-radius:15px;
            text-align:center;
            margin-top:10px;
           
            box-shadow: 0px 0px 5px black;
            transition: 0.5s ease;
            cursor: pointer;
            
        }
        #gallery .row{
            height:300px;
        }
        #gallery .card{
            margin-left:70px;
        }
        
        #gallery.card:hover{
            transform: translateY(-10px);
        }
        /*image gallery end*/
        
       
    </style>
    <!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  </head>
  <body>
    <div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="carousel/slider.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="carousel/brownie(slider).jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="carousel/new_sli.png" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
      <img src="carousel/Colourful_Macarons.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
     
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>
    <div>
    
        <div class="container" id="box"    data-aos="fade-up"
      data-aos-duration="1500">
        <div class="row">
            <div class="col-md-4 py-3 py-md-0">
                <div class="card">
                    <img src="./Image/box1.jpg" alt="">
                </div>
            </div>
            <div class="col-md-4 py-3 py-md-0">
                <div class="card">
                    <img src="./Image/box2.jpg" alt="">
                </div>
            </div>
            <div class="col-md-4 py-3 py-md-0">
                <div class="card">
                    <img src="./Image/box3.jpg" alt="">
                </div>
            </div>
        </div>
      </div>
    
    <div class="banner"    data-aos="fade-up"
        data-aos-duration="1500">
            <div class="content">
                <h3>Delicious Cake</h3>
                <h2>UPTO 50% OFF</h2>
                
                <div id="btnorder"><button><a href="Cakes.aspx">Order Now</a></button></div>
            </div>
            <div class="img">
                <img src="./image/banner-background.png" alt="">
            </div>
        </div>

         <div class="container" id="gallery"   data-aos="fade-up"
      data-aos-duration="1500">
             <h2>Our Collection</h2>
        <div class="row">
            <div class="col-md-4 py-3 py-md-0">
                <div class="card">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Cakes_img/DutchTruffleCake.jpg" />
                    <p1>CAKES</p1>
                    <asp:Button ID="Button1" runat="server" Text="Order Now" BackColor="#A16D0E" ForeColor="White" BorderStyle="None" PostBackUrl="Cakes.aspx?cake=cake"/>
                    
                </div>
            </div>
            <div class="col-md-4 py-3 py-md-0">
                <div class="card">
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/carousel/ChocoholicPastry.jpg" />
                    <p1>PASTRY</p1>
                    <asp:Button ID="Button2" runat="server" Text="Order Now" BackColor="#A16D0E" ForeColor="White" BorderColor="#A16D0E" BorderStyle="None" PostBackUrl="Pastry.aspx?pastry=pastry" />
                </div>
            </div>
            <div class="col-md-4 py-3 py-md-0">
                <div class="card">
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/oreo.jpg"  />
                    <p1>MACARON</p1>
                    <asp:Button ID="Button3" runat="server" Text="Order Now" BackColor="#A16D0E" ForeColor="White" BorderColor="#A16D0E" BorderStyle="None" PostBackUrl="~/Macaron.aspx" />
                </div>
            </div>
        </div>
      </div>
        
        <div class="ft-div">
            <img class="imgcls" src="Image/endimg.jpg" />
                <div class="head">
                     <h2>Looking for cakes?</h2>
                                
                      <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Cakes.aspx?cake=cake" Font-Bold="True" Font-Underline="False" ForeColor="#CFB989">ClickHere</asp:LinkButton>
                 </div>
          </div>

     </div>
   

</asp:Content>
