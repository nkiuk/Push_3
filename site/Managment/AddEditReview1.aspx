<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Managment.master" AutoEventWireup="true" CodeFile="AddEditReview1.aspx.cs" Inherits="Managment_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" DefaultMode="Insert" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" />
            <asp:BoundField DataField="Body" HeaderText="Body" SortExpression="Body" />
            <asp:BoundField DataField="GenreId" HeaderText="GenreId" SortExpression="GenreId" />
            <asp:CheckBoxField DataField="Authorized" HeaderText="Authorized" SortExpression="Authorized" />
            <asp:BoundField DataField="UpdateDateTime" HeaderText="UpdateDateTime" SortExpression="UpdateDateTime" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" DeleteCommand="DELETE FROM [Review] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Review] ([Title], [Summary], [Body], [GenreId], [Authorized], [UpdateDateTime]) VALUES (@Title, @Summary, @Body, @GenreId, @Authorized, @UpdateDateTime)" SelectCommand="SELECT [Id], [Title], [Summary], [Body], [GenreId], [Authorized], [UpdateDateTime] FROM [Review] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Review] SET [Title] = @Title, [Summary] = @Summary, [Body] = @Body, [GenreId] = @GenreId, [Authorized] = @Authorized, [UpdateDateTime] = @UpdateDateTime WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String"  />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="GenreId" Type="Int32" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="UpdateDateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="GenreId" Type="Int32" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="UpdateDateTime" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

