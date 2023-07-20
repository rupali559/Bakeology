<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Bakeology.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .main{
            
            height:463px;
            
           
        }
        .button {
            width: 150px;
            height: 32px;
            letter-spacing: 5px;
            background-color: rgba(161,109,14,1);
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left:100px;
            
        }
       .datalist{
           margin-left:100px;
       }
       .main h3{
           margin-left:100px;
           font-family:'Times New Roman';
       }
    </style>
    <div class="main">
            <div>
                <br />
                <br />
            <h3>Order Placed Successfully For</h3>
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="C_id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" CssClass="datalist" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="181px" Width="239px" ImageUrl='<%# Eval("C_img") %>' />
                    <br />
                    Name:
                    <asp:Label ID="C_NameLabel" runat="server" Text='<%# Eval("C_Name") %>' />
                    <br />
                    Category:
                    <asp:Label ID="C_CatLabel" runat="server" Text='<%# Eval("C_Cat") %>' />
                    <br />
                    Price:<asp:Label ID="Label1" runat="server" Text="₹"></asp:Label>
&nbsp;<asp:Label ID="C_PriceLabel" runat="server" Text='<%# Eval("C_Price") %>' />
                    <br />
                    Type:
                    <asp:Label ID="C_TypeLabel" runat="server" Text='<%# Eval("C_Type") %>' />
                    <br />
                    Gms:
                    &nbsp;
                    <asp:Label ID="C_GmsLabel" runat="server" Text='<%# Eval("C_Gms") %>' />
                    <br />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE ([C_id] = @C_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="C_id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
            <div>
                <asp:Button ID="Button1" runat="server" Text="Back to Home" PostBackUrl="~/Home.aspx" CssClass="button" />
            </div>
            </div>
</asp:Content>
