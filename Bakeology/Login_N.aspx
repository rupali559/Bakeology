<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_N.aspx.cs" Inherits="Bakeology.Login_N" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
    <style type="text/css">
   
        .main{
            
            height:500px;
            background-color:#e5f3f3;
           
        }
        .back-img{
            
            margin-top:-460px;
            margin-left:190px;
            
        }
        .back-main{
            background-image:url('box3.jpg');
        }
        .main #TextBox1{
            border-radius:6px;
            align-content:center;
        }
        .main #TextBox2{
            border-radius:6px;
        }
        .button{
            border-radius:7px;
            width: 150px;
            height: 32px;
            letter-spacing: 5px;
            background-color: #499fa4;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .button:hover{
            cursor: pointer;
            background-color:darkkhaki;
        }
        .link{
            text-decoration:none;
            color:black;
        }
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />

        
        <div class="main" style="margin-left:auto; margin-right:auto; width:300px; padding-left:20px; border-radius:5px;">
            <hr style="border:3px solid #499fa4; margin-right:5px"/>
            <br />
            
        <asp:Label align="center" ID="Label1" runat="server" Text="Hello!!" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <br />
            <br />
            <br />
            
            <br />
            <br />
        <asp:TextBox ID="TextBox1" placeholder="Email" runat="server"  Width="270px" Height="25px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
           
        <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" Width="270px" TextMode="Password" Height="25px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="TextBox2" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
           
        
       
            
        <asp:Button ID="Button1" runat="server" Text="Login" Width="270px" Height="40px" OnClick="Button1_Click" CssClass="button"  />
        <br />
        <br />
            <asp:Label ID="Label2" runat="server">Don't have an account?</asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Reg.aspx" CssClass="link">Register Here</asp:HyperLink>
            </div>
            <%--<div class="back-img"><img src="Cakes_img/login.png" />

            </div>
        --%>
        
        </form>
</body>
</html>
