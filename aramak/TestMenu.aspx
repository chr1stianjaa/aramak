<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestMenu.aspx.cs" Inherits="aramak.TestMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>PIZZA SELECTION</h1>
    <form id="form1" runat="server">
        Name:<br />
        <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        Type:<br />
        <asp:RadioButton ID="MargheritaRadioBtn" runat="server" GroupName="type" Text="Margherita (£3.60)" />
        <br />
        <asp:RadioButton ID="PepperoniRadioBtn" runat="server" GroupName="type" Text="Pepperoni (£3.80)" />
        <br />
        <br />
        Size:<br />
        <asp:RadioButton ID="NineRadioBtn" runat="server" GroupName="size" Text="Nine Inches (+£0.50)" />
        <br />
        <asp:RadioButton ID="TwelveRadioBtn" runat="server" GroupName="size" Text="Twelve Inches (+£1.50)" />
        <br />
        <br />
        Toppings:<br />
        <asp:CheckBox ID="MushroomCheckBox" runat="server" Text="Mushroom (+£0.45)" />
        <br />
        <asp:CheckBox ID="ChillisCheckBox" runat="server" Text="Chillis (£0.50)" />
        <br />
        <asp:CheckBox ID="PineappleCheckBox" runat="server" Text="Pineapple(+£0.55)" />
        <br />
        <br />
        <asp:Label ID="Typelbl" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Sizelbl" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Toppinglbl" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Pricelbl" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="CalculateBtn" runat="server" OnClick="CalculateBtn_Click" Text="Calculate" />
        <br />
        <asp:GridView ID="TestGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="TestMenuID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="TestMenuID" HeaderText="TestMenuID" ReadOnly="True" SortExpression="TestMenuID" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Toppin" HeaderText="Toppin" SortExpression="Toppin" />
                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TestMenu]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TestMenu]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
