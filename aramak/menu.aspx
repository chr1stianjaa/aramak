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
            Pepperoni Pizza&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Margherita Pizza<br />
            <asp:RadioButton ID="peppizza" runat="server" GroupName="pizza" OnCheckedChanged="peppizza_CheckedChanged" Text="£3.80" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="margpizza" runat="server" GroupName="pizza" OnCheckedChanged="margpizza_CheckedChanged" Text="£3.60" />
            <br />
            <br />
            <asp:RadioButton ID="ninepizza" runat="server" GroupName="size" OnCheckedChanged="ninepizza_CheckedChanged" Text="9' £1" />
            <br />
            <asp:RadioButton ID="twelvepizza" runat="server" GroupName="size" OnCheckedChanged="twelvepizza_CheckedChanged" Text="12' £2" />
            <br />
            <br />
            <asp:Button ID="totalbutton" runat="server" OnClick="totalbutton_Click" Text="Check Total" />
            <br />
            <br />
            Total:<asp:Label ID="resultLabel" runat="server" Text="£0.00"></asp:Label>
            <br />
            <br />
            <asp:Button ID="continuemenu" runat="server" OnClick="Button1_Click" Text="CONTINUE" />
        </div>
    </form>
</body>
</html>
