<%@ Page Title="Skin Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="SkinDemo.aspx.cs" Inherits="Demos_SkinDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:Button ID="Button2" SkinID="RedButton" runat="server" Text="Button" />
</asp:Content>

