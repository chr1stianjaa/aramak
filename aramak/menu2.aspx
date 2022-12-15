<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu2.aspx.cs" Inherits="aramak.checkout_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>SIZE</h1>
        </div>
        <asp:GridView ID="grdPrice" runat="server" AutoGenerateColumns="False" DataKeyNames="Pizza2ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Pizza2ID" HeaderText="Pizza2ID" ReadOnly="True" SortExpression="Pizza2ID" />
                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PIZZA2]"></asp:SqlDataSource>
        <br />
        Size: <asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnConfrim" runat="server" OnClick="btnConfrim_Click" Text="CONFIRM" />
        <br />
        <br />
        <asp:Button ID="btnContinue" runat="server" Text="CONTINUE" />
    </form>
</body>
</html>
