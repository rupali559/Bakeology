<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="Bakeology.Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            
        }
        .main{
            
            height:550px;
            background-color:#e5f3f3;
        }
        .back-img{
            
            margin-top:-460px;
            margin-left:190px;
            
        }
        
        .main #TextBox{
            border-radius:8px;
        }
        #HyperLink1{
            text-decoration:none;
            color:black;
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
        .back-main{
            background-color:#ecf5f5;
        }
        
    </style>
</head>
<body class="back-main">
    <form id="form1" runat="server">
        <br />
        <br />
        <div class="main" style="margin-left:auto; margin-right:auto; width:300px; border-style:groove; padding-left:20px; border-radius:10px;">
            <hr style="border:3px solid #499fa4; margin-right:5px"/>
            <br />
        <asp:Label align="center" ID="Label1" runat="server" Text="Hello!! Register Here...." Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <br />
            <br />
            <br />
            
        <asp:TextBox ID="TextBox1" placeholder="Email" runat="server"  Width="250px" TextMode="Email" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Please Enter Email" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            
        <br />
        <br />
        <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" Width="250px" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" placeholder="Re-type Password" runat="server" Width="250px" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Re-Type Password" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="TextBox4" placeholder="First Name" runat="server" CssClass="auto-style1" Width="250px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter First Name" ControlToValidate="TextBox4" ForeColor="#FF3300"></asp:RequiredFieldValidator>
  <br />
            
        <asp:TextBox ID="TextBox5" placeholder="Last Name" runat="server" Width="250px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
            
            <asp:TextBox ID="TextBox6" placeholder="Mobile No" runat="server" Width="250px" TextMode="Phone"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Mobile No" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br />
            <br />
                
            <asp:Button ID="Button1" runat="server" Text="Register" CssClass="button" />
        <br />
        <br />
        
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login_N.aspx">Already have an account?Login here</asp:HyperLink>
            </div>
        
    </form>
</body>
</html>
