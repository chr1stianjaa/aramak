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
            <br />
            Card Details:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            CVV:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <strong>&nbsp;<br />
            <asp:Button ID="confirmbutton" runat="server" Text="CONFIRM" OnClick="Button1_Click" />
            <br />
            <asp:GridView ID="grdCustomer" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                    <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" SortExpression="Customer Name" />
                    <asp:BoundField DataField="Customer E-mail" HeaderText="Customer E-mail" SortExpression="Customer E-mail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            <br />
            </strong>
            <asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click" Text="CONTINUE" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PizzaIDD" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="PizzaIDD" HeaderText="PizzaIDD" InsertVisible="False" ReadOnly="True" SortExpression="PizzaIDD" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                    <asp:BoundField DataField="Topping" HeaderText="Topping" SortExpression="Topping" />
                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                    <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
            <br />
            </div>
        <asp:Label ID="resultLabel5" runat="server"></asp:Label>
    </form>
</body>
</html>
