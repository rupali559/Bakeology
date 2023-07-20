<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Bakeology.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    .bigimage{          
            
            align-items: center;
            
        }
        .header{
            margin-top:-80px;
            margin-left:-1500px;
        }
            .header h1 {
                color: #FF9891;
            }
            .filter{
                margin-top:-1500px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
    <div class="bigimage"><img src="Image/middle.jpg" />
                    <div class="header">
                        
                        <h1>CAKES</h1>
                        <p>Any celebration, whether a cozy gathering or an extravagent party, is incomplete without cake! We offer a wide range <br />of handcrafted speciality cakes that are a treat to the eyes and also the taste buds.</p>
                        </div>
              </div>
    <div class="filter">
        <asp:Label ID="Label1" runat="server" Text="Filters"></asp:Label><br />
       
        <asp:CheckBox ID="CheckBox2" runat="server" Text="1/2 Kg" /><br />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Egg" /><br />
        <asp:CheckBox ID="CheckBox4" runat="server" Text="Eggless" />
    </div>
        </div>
</asp:Content>
