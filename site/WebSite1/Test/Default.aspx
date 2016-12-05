<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Image ID="Image1" runat="server" ImageUrl="Header.jpg" /><br />
    <asp:Image ID="Image2" runat="server" ImageUrl="/Header.jpg" /><br />
    <asp:Image ID="Image3" runat="server" ImageUrl="~/Header.jpg" /><br />

    </div>
    </form>
</body>
</html>
