<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="aramak.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>PIZZA SELECTION<br />
            </h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PizzaID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="PizzaID" HeaderText="PizzaID" ReadOnly="True" SortExpression="PizzaID" />
                    <asp:BoundField DataField="Type of Pizza" HeaderText="Type of Pizza" SortExpression="Type of Pizza" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PIZZA]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Pizza2ID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Pizza2ID" HeaderText="Pizza2ID" InsertVisible="False" ReadOnly="True" SortExpression="Pizza2ID" />
                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [PIZZA2]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:Button ID="continuemenu" runat="server" OnClick="Button1_Click" Text="CONTINUE" />
        </div>
        <asp:Label ID="resultLabel3" runat="server"></asp:Label>
    </form>
</body>
</html>
