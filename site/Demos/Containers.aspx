﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Containers.aspx.cs" Inherits="Site_Demos_Containers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Containers & Wizard Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBox ID="ShowPanelCheckBox" Text="Show Panel" runat="server" AutoPostBack="true" OnCheckedChanged="ShowPanelCheckBox_CheckedChanged" />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            
            <asp:Wizard ID="Wizard1" runat="server" Width="795px" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick">
                <WizardSteps>
                    <asp:WizardStep runat="server" title="About You">
                        <asp:Label ID="NameLabel" runat="server" Text="Type Your Name"></asp:Label>
                        <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Favorite Lanuage" StepType="Finish">
                        <asp:DropDownList ID="FavoriteLanuageDropDownList" runat="server">
                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>Visual Basic</asp:ListItem>
                            <asp:ListItem>CSS</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Ready">
                        <asp:Label ID="Result" runat="server" Text="Label"></asp:Label>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </asp:Panel>
    </div>
        
    </form>
</body>
</html>
