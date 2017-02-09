<%@ Page Title="Manage Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ManagePhotoAlbum.aspx.cs" Inherits="ManagePhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" DataKeyNames="Id" InsertItemPosition="LastItem">
        <InsertItemTemplate>
            <li style="">
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />ToolTip:
                <asp:TextBox ID="ToolTipTextBox" runat="server" Text='<%# Bind("ToolTip") %>' />
                <br />
                ImageUrl:
                <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate> 
        <ItemTemplate>
            <li style="">
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                ToolTip:
                <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Eval("ToolTip") %>' />
                <br />
                ImageUrl:
                <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul class="ItemContainer">
                <li id="itemPlaceholder" runat="server" />
            </ul>
        </LayoutTemplate> 
    </asp:ListView>

    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EntitySetName="Pictures" Where="it.PhotoAlbumId = @photoAlbumId" OnInserting="EntityDataSource1_Inserting" EntityTypeFilter="" Select="">
        <WhereParameters>
            <asp:QueryStringParameter Name="PhotoAlbumId" QueryStringField="PhotoAlbumId" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

