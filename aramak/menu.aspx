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
                <SelectedRowStyle BackColor="#99CCFF" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PIZZA]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Pizza2ID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Pizza2ID" HeaderText="Pizza2ID" InsertVisible="False" ReadOnly="True" SortExpression="Pizza2ID" />
                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
                <SelectedRowStyle BackColor="#99CCFF" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [PIZZA2]"></asp:SqlDataSource>
            <br />
            <asp:RadioButton ID="PineappleRB" runat="server" GroupName="top" OnCheckedChanged="PineappleRB_CheckedChanged" Text="Pineapple (£0.45)" />
            <br />
            <asp:RadioButton ID="ChillisRB" runat="server" GroupName="top" OnCheckedChanged="ChillisRB_CheckedChanged" Text="Chillis (£0.50)" />
            <br />
            <asp:RadioButton ID="MushroomRB" runat="server" GroupName="top" OnCheckedChanged="MushroomRB_CheckedChanged" Text="Mushroom (£0.55)" />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblsize" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lbltype" runat="server"></asp:Label>
            <br />
        <asp:Label ID="resultLabel3" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="continuemenu" runat="server" OnClick="Button1_Click" Text="CONTINUE" />
            <br />
            <br />
            <br />
            <asp:Label ID="lblfromgrid2" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblprice2" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblfromgrid" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblprice" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
