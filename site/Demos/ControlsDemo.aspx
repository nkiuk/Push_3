<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        Label1.Text = "Your Name is " + YourName.Text;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Controles Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Your Name
        <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Button ID="SubmitButton" runat="server" Text="Submit Information" OnClick="SubmitButton_Click" />
    
    </div>
    </form>
</body>
</html>
