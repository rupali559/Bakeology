<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Entry.aspx.cs" Inherits="Bakeology.Admin_Entry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .main{
            height:100px;;
            width:100vh;
        }
        .gridview{
            width:100%;
        }
        .button{
            float:right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <br />
            <div class="button">
            </div>
            <br />
            <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="C_id" DataSourceID="SqlDataSource1" ShowFooter="True" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CssClass="gridview" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="C_id" InsertVisible="False" SortExpression="C_id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("C_id") %>'></asp:Label>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="Button1" runat="server" Height="34px" Text="Insert" CommandName="insert" Width="86px" />
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("C_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="C_Name" SortExpression="C_Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("C_Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("C_Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="C_Cat" SortExpression="C_Cat">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("C_Cat") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("C_Cat") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="C_Desc" SortExpression="C_Desc">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("C_Desc") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("C_Desc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="C_Price" SortExpression="C_Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("C_Price") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("C_Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="C_Type" SortExpression="C_Type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("C_Type") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("C_Type") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="C_Gms" SortExpression="C_Gms">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("C_Gms") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("C_Gms") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Keyword" SortExpression="Keyword">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Keyword") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Keyword") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="C_img">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Eval("C_img") %>'></asp:TextBox>
                            <asp:FileUpload ID="FileUpload3" runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("C_img") %>' />
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                        </ItemTemplate>
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" DeleteCommand="DELETE FROM [bakes] WHERE [C_id] = @C_id" InsertCommand="INSERT INTO [bakes] ([C_Name], [C_Cat], [C_Desc], [C_img], [C_Price], [C_Type], [C_Gms], [Keyword]) VALUES (@C_Name, @C_Cat, @C_Desc, @C_img, @C_Price, @C_Type, @C_Gms, @Keyword)" SelectCommand="SELECT * FROM [bakes]" UpdateCommand="UPDATE [bakes] SET [C_Name] = @C_Name, [C_Cat] = @C_Cat, [C_Desc] = @C_Desc, [C_img] = @C_img, [C_Price] = @C_Price, [C_Type] = @C_Type, [C_Gms] = @C_Gms, [Keyword] = @Keyword WHERE [C_id] = @C_id">
                <DeleteParameters>
                    <asp:Parameter Name="C_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="C_Name" Type="String" />
                    <asp:Parameter Name="C_Cat" Type="String" />
                    <asp:Parameter Name="C_Desc" Type="String" />
                    <asp:Parameter Name="C_img" Type="String" />
                    <asp:Parameter Name="C_Price" Type="Int32" />
                    <asp:Parameter Name="C_Type" Type="String" />
                    <asp:Parameter Name="C_Gms" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="C_Name" Type="String" />
                    <asp:Parameter Name="C_Cat" Type="String" />
                    <asp:Parameter Name="C_Desc" Type="String" />
                    <asp:Parameter Name="C_img" Type="String" />
                    <asp:Parameter Name="C_Price" Type="Int32" />
                    <asp:Parameter Name="C_Type" Type="String" />
                    <asp:Parameter Name="C_Gms" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="C_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" Postbackurl="~/Admindesk.aspx">Back to Home Page</asp:LinkButton>
            <br />
            <br />
            <br />
        </div>
            </div>
    </form>
</body>
</html>
