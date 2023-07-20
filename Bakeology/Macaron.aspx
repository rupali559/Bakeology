<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Macaron.aspx.cs" Inherits="Bakeology.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .header{
            margin-top:-200px;
            margin-left:300px;
        }
        .header h1 {
             align-items: center;
             color: rgba(161,109,14,1);
         }
        .header p{
            font-size:x-large;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color:#499fa4;
         }
        .datalist{
            padding:100px;
        }
        .btnview{
            /* border-radius:6px;*/
             cursor:pointer;
        }
        .imgdatalist{
             box-shadow: 0px 0px 5px black;
             transition: 0.5s ease;
             cursor: pointer;
        }
        .imgdatalist:hover{
             transform: translateY(-10px);
        }
        .ft-div{
            width: 100%;
            height:180px;
            border-top: 2px solid rgba(161,109,14,1);
        }
        .imgcls{
            width: 100%;
            height:210px;
        }
        .head #LinkButton2{
            text-decoration:none;
            color:#CFB989;
         }
        .head{
            margin:-150px 20px 20px 500px;
        }
        .head h2{
            color:#CFB989;
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
        }
            
    </style>
       
    <div>
        <div>
        <img class="bigimage" src="carousel/back-mac.png"style="width:100%" />
    </div>
    <div class="header">
        <h1>MACARONS</h1>
        <p>Macarons, where flavor and uniqueness meet and make for a sweet treat.</p>
     </div>
        <div class="datalist">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="C_id" CellSpacing="60" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#EC0890">
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="230px" ImageUrl='<%# Eval("C_img") %>' Width="265px" CssClass="imgdatalist" />
                    <br />
                    <asp:Label Text='<%# Eval("C_Name") %>' runat="server" ID="C_NameLabel" />&nbsp;<br />
                    <asp:Label ID="Label2" runat="server" Text="₹"></asp:Label>
                    <asp:Label Text='<%# Eval("C_Price") %>' runat="server" ID="C_PriceLabel" />
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" CssClass="button" Text="View More" CommandArgument='<%# Eval("C_id") %>' CommandName="ViewMore"/>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:studentConnectionString %>' SelectCommand="SELECT * FROM [bakes] WHERE ([C_Cat] = @C_Cat)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="C_Cat" QueryStringField="mac" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="ft-div">
              <img class="imgcls" src="Image/endimg.jpg" />
                <div class="head">
                 <h2>Looking for Pastry?try?</h2>
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="Cakes.aspx?pastry=pastry" Font-Bold="True" Font-Underline="False" ForeColor="#CFB989">ClickHere</asp:LinkButton>
               </div>
        </div>  
    </div>

</asp:Content>
