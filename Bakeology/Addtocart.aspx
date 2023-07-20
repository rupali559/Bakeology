<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Addtocart.aspx.cs" Inherits="Bakeology.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .imgdatalist{
             box-shadow: 0px 0px 5px black;
             transition: 0.5s ease;
             cursor: pointer;
        }
        .imgdatalist:hover{
             transform: translateY(-10px);
        }
        .imgcls{
             width: 100%;
             height:250px;
        }
        .head #LinkButton1{
             text-decoration:none;
             color:#CFB989;
        }
        .head{
             margin:-150px 20px 20px 500px;
        }
        .head h2{
             color:#CFB989;
        }
       
        .data{
            margin-left:100px;
            margin-top:50px;
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
        <div >
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="DataList1_ItemCommand" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" CssClass="data">
        <ItemTemplate>
            &nbsp;<asp:Image ID="Image2" runat="server" Height="205px" ImageUrl='<%# Eval("C_img") %>' Width="266px" />
            <br />
            <br />
            <asp:Label Text='<%# Eval("C_Name") %>' runat="server" ID="C_NameLabel" />
            <br />
            <br />
            Description:<asp:Label Text='<%# Eval("C_Desc") %>' runat="server" ID="C_DescLabel" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="₹"></asp:Label>
            <asp:Label Text='<%# Eval("C_Price") %>' runat="server" ID="C_PriceLabel" />
            <br />
            <br />
            Type:<asp:Label Text='<%# Eval("C_Type") %>' runat="server" ID="C_TypeLabel" />
            <br />
            <br />
            Grams:<asp:Label Text='<%# Eval("C_Gms") %>' runat="server" ID="C_GmsLabel" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Height="37px" Text="Buy Now" Width="115px" CommandArgument='<%# Eval("C_id") %>' CommandName="Addtocart" OnClientClick="confirm(&quot;Thank you for purchasing&quot;)" CssClass="button" />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE ([C_id] = @C_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="C_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:studentConnectionString %>' SelectCommand="SELECT [C_Name], [C_img], [C_Desc], [C_Price], [C_Gms], [C_Type] FROM [bakes] WHERE ([C_id] = @C_id)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="C_id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
            </div>
        <div class="ft-div">
              <img class="imgcls" src="Image/endimg.jpg" />
                <div class="head">
                 <h2>Back to home page</h2>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Home.aspx" Font-Bold="True" Font-Underline="False" ForeColor="#CFB989">ClickHere</asp:LinkButton>
               </div>
        </div> 
        </div>
</asp:Content>
