<%@ Page Title="Create New Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="NewPhotoAlbum.aspx.cs" Inherits="NewPhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
     <asp:DetailsView 
        ID="DetailsView1"
        runat="server" 
        AutoGenerateRows="False"
        DataKeyNames="Id"
        DataSourceID="EntityDataSource1"
        DefaultMode="Insert" 
        Height="50px" 
        Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="true" SortExpression="Id" InsertVisible="false"  />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"/>
            <asp:CommandField ShowInsertButton="true"/>
        </Fields>
    </asp:DetailsView>
    <asp:EntityDataSource 
        ID="EntityDataSource1" 
        runat="server" 
        ConnectionString="name=PlanetWroxEntities" 
        DefaultContainerName="PlanetWroxEntities" 
        EnableFlattening="False" 
        EntitySetName="PhotoAlbum" 
        OnInserted="EntityDataSource1_Inserted" 
        EnableInsert="True">
    </asp:EntityDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

