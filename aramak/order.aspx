<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="aramak.order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>Ordering</strong><br />
        </div>
        Time:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:GridView ID="grdCollection" runat="server" AutoGenerateColumns="False" DataKeyNames="CollectionID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="CollectionID" HeaderText="CollectionID" ReadOnly="True" SortExpression="CollectionID" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [COLLECTION]"></asp:SqlDataSource>
        <br />
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CONFIRM" />
        </p>
        <p>
            &nbsp;<asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click" Text="CONTINUE" />
        </p>
        <asp:Label ID="resultLabel2" runat="server"></asp:Label>
    </form>
</body>
</html>
