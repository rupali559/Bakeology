<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Bakeology.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
        .imgcls{
             width: 100%;
             height:250px;
        }
        .ft.div{
            bottom:0px;
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
        .datalist{
            display:flex;
            justify-content:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div class="datalist">
            
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="C_id" CellSpacing="50" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" CssClass="datalist">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="181px" ImageUrl='<%# Eval("C_img") %>' Width="233px" />
                    <br />
                    Name:<asp:Label ID="C_NameLabel" runat="server" Text='<%# Eval("C_Name") %>' />
                    <br />
                    Price:
                    <asp:Label ID="C_PriceLabel" runat="server" Text='<%# Eval("C_Price") %>' />
                    <br />
                    Type:
                    <asp:Label ID="C_TypeLabel" runat="server" Text='<%# Eval("C_Type") %>' />
                    <br />
                    Gms:
                    <asp:Label ID="C_GmsLabel" runat="server" Text='<%# Eval("C_Gms") %>' />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="button" Height="32px" CommandArgument='<%# Eval("C_id") %>' CommandName="ViewMore" Text="View More"  />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT * FROM [bakes] WHERE ([Keyword] LIKE '%' + @Keyword + '%')">
                <SelectParameters>
                    <asp:SessionParameter Name="Keyword" SessionField="search" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
            </div>
        <div class="ft-div">
              <img class="imgcls" src="Image/endimg.jpg" />
                <div class="head">
                 <h2>Back to home page</h2>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Home.aspx" Font-Bold="True" Font-Underline="False" ForeColor="#CFB989">ClickHere</asp:LinkButton>
               </div>
        </div> 
    </form>
</body>
</html>
