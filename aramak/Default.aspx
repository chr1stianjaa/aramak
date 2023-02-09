<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aramak.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>&nbsp;School Pizza</h1>
        <p>
            <asp:Image ID="Image1" runat="server" Height="119px" ImageUrl="Nescot-logo.jpg" Width="177px" />
        </p>
        <p>
            <strong>Login</strong></p>
        <p>
            <strong>Username:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
        </p>
        <p>
            <strong>Password:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </strong>
        </p>
        <p>
            <asp:Button ID="continue1" runat="server" OnClick="continue1_Click1" Text="CONTINUE" />
        </p>
        <asp:Label ID="resultLabel1" runat="server"></asp:Label>
    </form>
</body>
</html>
