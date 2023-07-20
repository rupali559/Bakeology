<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Bakeology.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body bgcolor="#89CFF0">
    <h1 style="font-family: Castellar; font-size: x-large; text-decoration: underline; color: #000000;" class="auto-style1">Register Here!!!</h1>
    <hr />
    
    <form id="form1" runat="server">
        <div>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">Username:</p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server" Width="277px"></asp:TextBox>
        </p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">Email:</p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">
            <asp:TextBox ID="TextBox2" runat="server" Width="283px"></asp:TextBox>
        </p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">Phone number:</p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">
            <asp:TextBox ID="TextBox3" runat="server" Width="279px"></asp:TextBox>
        </p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">Password:</p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">
            <asp:TextBox ID="TextBox4" runat="server" Width="281px"></asp:TextBox>
        </p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">&nbsp;</p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">
            <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Small" Text="T&C " />&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Height="30px" OnClick="LinkButton1_Click">Accept our Terms and Conditions</asp:LinkButton>
        </p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">&nbsp;</p>
        <p style="font-family: 'Century Schoolbook'; font-size: x-large; color: #000000;" class="auto-style1">
            <asp:Button ID="Button1" runat="server" BorderStyle="Ridge" Font-Size="Larger" Text="Register" />
        </p>
        </div>
    </form>
</body>
</html>
