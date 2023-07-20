<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Cakes.aspx.cs" Inherits="Bakeology.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /**{
            margin:0;
            padding:0;
        }*/
        .bigimage{
            width:100%;
        }
    
        .header{
            margin-top:-250px;
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
            
            .container{
                width: 100%;
                display: flex;
                justify-content: space-evenly;
            }
            .filter{
                width: 30%;
                margin-top:200px;
                margin-left:100px;
                
            }
            .datalist{
                width:70%;
                margin-top:100px;
                padding-right:200px;
                
                /*background-image: linear-gradient(rgba(237,228,223,255),rgba(240,248,240,255),rgb(207, 185, 137));*/
                margin-top:130px;
                margin-bottom:30px;
            }
            #image1 .datalist:hover{
            transform: translateY(-10px);
            }
            .ft-div{
            width: 100%;
            height:180px;
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
            .btn{
                /*border-radius:4px;*/
                width: 150px;
                height: 32px;
                letter-spacing: 5px;
                background-color: rgba(161,109,14,1);
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                
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
            .container{
                border-bottom: 2px solid rgba(161,109,14,1);
            }
    </style>
   
    <div>
        <img class="bigimage" src="Image/middle.jpg"/>
    </div>
    <div class="header">
                        
                        <h1>CAKES</h1>
                        <p>Any celebration, whether a cozy gathering or an extravagent party, is incomplete without cake!<br /> We offer a wide range <br />of handcrafted speciality cakes that are a treat to the eyes and also the taste buds.</p>
                        </div>
     <div class="container">
         <div class="filter">
        <asp:Label ID="Label1" runat="server"  Text="Filters" Font-Bold="True" Font-Size="X-Large" ForeColor="#CFB989"></asp:Label><br /><br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="1 Kg" Font-Size="Large" Font-Bold="False"  /><br /><br />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="1/2 Kg" Font-Size="Large" Font-Bold="False" /><br /><br />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Egg" Font-Size="Large" Font-Bold="False" /><br />
        <br />
        <asp:CheckBox ID="CheckBox4" runat="server" Text="Eggless" Font-Size="Large" Font-Bold="False" />
             <br />
             <br />
             <asp:CheckBox ID="CheckBox5" runat="server" Text="All" />
             <br />
             <br />
             <asp:Button ID="Button1" runat="server" Text="Apply" OnClick="Button1_Click" BackColor="#CFB989" Font-Bold="True" ForeColor="Black" Height="33px" Width="87px" BorderColor="#CFB989" />
             <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE (([C_Cat] = 'cake') AND ([C_Gms] = '500gm'))">
                 <SelectParameters>
                     <asp:QueryStringParameter Name="C_Cat" QueryStringField="half" Type="String" />
                     <asp:QueryStringParameter Name="C_Gms" QueryStringField="half" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE ([C_Gms] = '1kg')">
                 <SelectParameters>
                     <asp:QueryStringParameter Name="C_Gms" QueryStringField="gms" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
    </div>
         
    
    <div class="datalist">
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE (([C_Cat] = 'cake') AND ([C_Type] = 'Eggless'))">
            <SelectParameters>
                <asp:QueryStringParameter Name="C_Cat" QueryStringField="Eggless" Type="String" />
                <asp:QueryStringParameter Name="C_Type" QueryStringField="Eggless" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style2" DataKeyField="C_id" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="3" RepeatDirection="Horizontal" style="margin-top: 0" ForeColor="#EC0890" CellSpacing="50" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="223px" ImageUrl='<%# Eval("C_img") %>' Width="250px" EnableTheming="True" CssClass="imgdatalist" />
                <br />
                <asp:Label ID="C_NameLabel" runat="server" Text='<%# Eval("C_Name") %>' Font-Names="Bahnschrift" />
                <br />
                ₹<asp:Label ID="Label2" runat="server" Text='<%# Eval("C_Price") %>'></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("C_Type") %>'></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Height="40px" Text="View More"  CssClass="button" CommandArgument='<%# Eval("C_id") %>' CommandName="ViewMore"/>
                <br />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE (([C_Cat] = 'cake') AND ([C_Type] = 'egg'))">
            <SelectParameters>
                <asp:QueryStringParameter Name="C_Type" QueryStringField="Egg" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE ([C_Cat] = @C_Cat)">
            <SelectParameters>
                <asp:QueryStringParameter Name="C_Cat" QueryStringField="cake" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes]"></asp:SqlDataSource>
    </div>
    </div> 
    <div class="ft-div">
                        <img class="imgcls" src="Image/endimg.jpg" />
                            <div class="head">
                             <h2>Looking for Pastry?</h2>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Pastry.aspx?pastry=pastry" Font-Bold="True" Font-Underline="False" ForeColor="#CFB989">Click Here</asp:HyperLink>
                                <%--<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="Pastry.aspx?pastry=pastry" Font-Bold="True" Font-Underline="False" ForeColor="#CFB989">ClickHere</asp:LinkButton>--%>
                            </div>
                    </div>  
</asp:Content>
