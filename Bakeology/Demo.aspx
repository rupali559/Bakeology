<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="Bakeology.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="C_id" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    C_id:
                    <asp:Label Text='<%# Eval("C_id") %>' runat="server" ID="C_idLabel" /><br />
                    C_Name:
                    <asp:Label Text='<%# Eval("C_Name") %>' runat="server" ID="C_NameLabel" /><br />
                    C_Cat:
                    <asp:Label Text='<%# Eval("C_Cat") %>' runat="server" ID="C_CatLabel" /><br />
                    C_Desc:
                    <asp:Label Text='<%# Eval("C_Desc") %>' runat="server" ID="C_DescLabel" /><br />
                    C_img:
                    <asp:Label Text='<%# Eval("C_img") %>' runat="server" ID="C_imgLabel" /><br />
                    C_Price:
                    <asp:Label Text='<%# Eval("C_Price") %>' runat="server" ID="C_PriceLabel" /><br />
                    C_Type:
                    <asp:Label Text='<%# Eval("C_Type") %>' runat="server" ID="C_TypeLabel" /><br />
                    C_Gms:
                    <asp:Label Text='<%# Eval("C_Gms") %>' runat="server" ID="C_GmsLabel" /><br />
                    Keyword:
                    <asp:Label Text='<%# Eval("Keyword") %>' runat="server" ID="KeywordLabel" /><br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:studentConnectionString %>' SelectCommand="SELECT * FROM [bakes] WHERE (([C_Cat] = 'cake') AND ([C_Type] = 'egg'))">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="Egg" Name="C_Type" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
