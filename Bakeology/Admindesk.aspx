<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admindesk.aspx.cs" Inherits="Bakeology.Admindesk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <div >
            <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="10px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#FFFBD6" />
                <DynamicSelectedStyle BackColor="#FFCC66" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Client Page"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Admin_Entry.aspx" Text="Admindesk" Value="Admindesk"></asp:MenuItem>
                    <asp:MenuItem Text="Account" Value="Account"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" ItemSpacing="10px" VerticalPadding="2px" />
                <StaticMenuStyle HorizontalPadding="450px" VerticalPadding="30px" />
                <StaticSelectedStyle BackColor="#FFCC66" />
            </asp:Menu>
        </div>
            
    </form>
</body>
</html>
