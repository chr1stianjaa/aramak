<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="aramak.checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>Checkout&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            </strong>
            Name:<asp:TextBox ID="checkname" runat="server"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            Email:<asp:TextBox ID="checkemail" runat="server"></asp:TextBox>
            <br />
            <strong>&nbsp;<br />
            <asp:Button ID="confirmbutton" runat="server" Text="CONFIRM" OnClick="Button1_Click" />
            <br />
            <br />
            </strong>
            <asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click" Text="CONTINUE" />
            <br />
            </div>
        <asp:GridView ID="grdCustomer" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" SortExpression="Customer Name" />
                <asp:BoundField DataField="Customer E-mail" HeaderText="Customer E-mail" SortExpression="Customer E-mail" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
        <asp:Label ID="resultLabel5" runat="server"></asp:Label>
    </form>
</body>
</html>
