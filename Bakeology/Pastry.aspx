<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Pastry.aspx.cs" Inherits="Bakeology.WebForm6" %>
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
                margin-left:250px;
                position:relative;
                margin-top:-400px;
                margin-bottom:30px;
                
               
            }
            .filter{
                padding:200px;
                margin-left:-80px;
                
            }
            .ft-div{
            width: 100%;
            height:180px;
            border-top: 2px solid rgba(161,109,14,1);;
            }
            .imgcls{
                width: 100%;
                height:210px;
            }
            .head #LinkButton3{
                text-decoration:none;
                color:#CFB989;
            }
            .head{
            margin:-150px 20px 20px 500px;
            }
            .head h2{
                color:#CFB989;
            }
            .btnview{
                /*border-radius:7px;*/
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
        <div class="bigimage">
            <img src="Image/back_pastry.jpg" style="width:100%" />
        </div>
        <div class="header">
            <h1>
                PASTRY
            </h1>
            <p>A pastry is a sweet treat, but it’s also the thing that holds all of your favorite ingredients together.</p>
        </div>
        <div class="filter">
            <asp:Label ID="Label1" runat="server" Text="Filter" Font-Bold="True" Font-Size="X-Large" ForeColor="#CFB989"></asp:Label><br /><br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Egg" Font-Bold="False" /><br /><br />
            <asp:CheckBox ID="CheckBox2" runat="server"  Text="Eggless" Font-Bold="False" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Apply" OnClick="Button1_Click" Width="92px" BackColor="#CFB989" BorderColor="#CFB989" Font-Bold="True" Height="32px" />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE (([C_Cat] = 'pastry') AND ([C_Type] = 'Eggless'))">
                <SelectParameters>
                    <asp:QueryStringParameter Name="C_Cat" QueryStringField="Eggless" Type="String" />
                    <asp:QueryStringParameter Name="C_Type" QueryStringField="Eggless" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
        <div class="datalist">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE (([C_Cat] = 'pastry') AND ([C_Type] = 'Egg'))">
                <SelectParameters>
                    <asp:QueryStringParameter Name="C_Cat" QueryStringField="Egg" Type="String" />
                    <asp:QueryStringParameter Name="C_Type" QueryStringField="Egg" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" CellSpacing="50" DataKeyField="C_id" RepeatColumns="3" RepeatDirection="Horizontal" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#EC0890" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="172px" ImageUrl='<%# Eval("C_img") %>' Width="235px" CssClass="imgdatalist" />
                    <br />
                    <asp:Label ID="C_NameLabel" runat="server" Text='<%# Eval("C_Name") %>' />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="₹"></asp:Label>
                    <asp:Label ID="C_PriceLabel" runat="server" Text='<%# Eval("C_Price") %>' />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("C_Type") %>'></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" CssClass="button" Text="View More" CommandArgument='<%# Eval("C_id") %>' CommandName="ViewMore"/>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE ([C_Cat] = @C_Cat)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="C_Cat" QueryStringField="pastry" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="ft-div">
                        <img class="imgcls" src="Image/endimg.jpg" />
                            <div class="head">
                             <h2>Looking for Macarons?</h2>
                                
                                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="Pastry.aspx?pastry=pastry" Font-Bold="True" Font-Underline="False" ForeColor="#CFB989">ClickHere</asp:LinkButton>
                            </div>
                    </div> 
    </div>
</asp:Content>
