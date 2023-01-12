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
        <asp:GridView ID="grdPrice" runat="server" AutoGenerateColumns="False" DataKeyNames="Pizza2ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Pizza2ID" HeaderText="Pizza2ID" InsertVisible="False" ReadOnly="True" SortExpression="Pizza2ID" />
                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PIZZA2]"></asp:SqlDataSource>
        <br />
        Size:
        <asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
        <br />
        <br />
        Price:
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnConfrim" runat="server" OnClick="btnConfrim_Click" Text="CONFIRM" />
        <br />
        <br />
        <asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click" Text="CONTINUE" />
        <br />
        <p>
            <asp:Label ID="resultLabel4" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
