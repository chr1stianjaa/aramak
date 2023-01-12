<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="aramak.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="323px" ImageUrl="pepperoni-pizza6+srgb..jpg" Width="261px" />
            <asp:Image ID="Image2" runat="server" Height="325px" ImageUrl="margherita-pizza-4.jpg" Width="300px" />
            <br />
            <br />
            Pizza:<asp:TextBox ID="txtPizza" runat="server"></asp:TextBox>
            <br />
            <br />
            Price:<asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="CONFIRM" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PizzaID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="PizzaID" HeaderText="PizzaID" ReadOnly="True" SortExpression="PizzaID" />
                    <asp:BoundField DataField="Type of Pizza" HeaderText="Type of Pizza" SortExpression="Type of Pizza" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PIZZA]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="continuemenu" runat="server" OnClick="Button1_Click" Text="CONTINUE" />
        </div>
        <asp:Label ID="resultLabel3" runat="server"></asp:Label>
    </form>
</body>
</html>
