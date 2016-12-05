<%@ Page Title="Web Service Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="WebServices.aspx.cs" Inherits="Demos_WebServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <%--Registering Proxy Web Service--%>
        <Services>
            <asp:ServiceReference Path="~/WebServices/NameService.asmx" />
        </Services>
    </asp:ScriptManagerProxy>
    <!--below 2 x Plain html element to show code/servce executes at clinet side -->
    <input id="YourName" type="text" /> 
    <input id="SayHello" type="button" value="Say Hello with a WebService called by client" />

    <input id="SayHelloPageMethod" type="button" value="Say Hello with a Page Method" />

    <!--Clinet side Java Script-->
    <script type="text/javascript">
        function HelloWorld()
        {
            var yourName = $get('YourName').value;
            NameService.HelloWorld(yourName, HelloWorldCallback); // sucess call back method
        }

        function HelloWorldPageMethod()
        {
            var yourName = $get('YourName').value;
            PageMethods.HelloWorld(yourName, HelloWorldCallback);
        }

        function HelloWorldCallback(result)
        {
            alert(result);
        }

        $addHandler($get('SayHello'), 'click', HelloWorld); // Web Service called by clinet
        $addHandler($get('SayHelloPageMethod'), 'click', HelloWorldPageMethod); // 
    </script>
</asp:Content>

