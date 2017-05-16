<%@ Page Title="Planet Wrox - Management - Reviews" Language="C#" MasterPageFile="~/MasterPages/Managment.master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="Managment_Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <!--Bound List of Genre to Drop Down list -->
    <asp:DropDownList 
        ID="DropDownList1" 
        runat="server" 
        AppendDataBoundItems="True" 
        AutoPostBack="True" 
        DataSourceID="SqlDataSource1" 
        DataTextField="Name" 
        DataValueField="Id">
        <asp:ListItem Value="">Make a selection</asp:ListItem>
    </asp:DropDownList>

    <!--Get list of Genre -->
    <asp:SqlDataSource 
        ID="SqlDataSource1" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" 
        SelectCommand="SELECT [Id], [Name] FROM [Genre] ORDER BY [SortOrder]">
    </asp:SqlDataSource>
    <asp:GridView 
        ID="GridView1" 
        runat="server" 
        AutoGenerateColumns="False" 
        DataKeyNames="Id" 
        DataSourceID="SqlDataSource2">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddEditReview.aspx?Id={0}" DataTextField="Title" HeaderText="Title" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <%--<asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />--%>
            <%--<asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" />--%>
            <%--<asp:BoundField DataField="Body" HeaderText="Body" SortExpression="Body" />--%>
            <%--<asp:BoundField DataField="GenreId" HeaderText="GenreId" SortExpression="GenreId" />--%>
            <asp:TemplateField HeaderText="Authorized" SortExpression="Authorized">
                <ItemTemplate>
                    <asp:Label ID="AuthorizedLabel" runat="server" Text='<%# GetBooleanText(Eval("Authorized")) %>'/> <!-- Eval: one way data binding expreeson & can pass more then one arguments to Code behind-->
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CreateDateTime" HeaderText="CreateDateTime" SortExpression="CreateDateTime" DataFormatString="{0:g}" />
            <%--<asp:BoundField DataField="UpdateDateTime" HeaderText="UpdateDateTime" SortExpression="UpdateDateTime" />--%>
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource 
        ID="SqlDataSource2" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" 
        SelectCommand="SELECT [Id],[Title],[Authorized],[CreateDateTime] FROM [Review] WHERE ([GenreId] = @GenreId)">
        <%--Triggered From Genare DropDownList1 Post Back--%>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="GenreId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <a href="AddEditReview.aspx">Insert New Review</a><br />
    
</asp:Content>

