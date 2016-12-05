 <%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>

<% if (false) { %> 
        <script src="../Scripts/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>}
<% } %>

<!-- Clinet Side Validation Event Handlers-->
<script type="text/javascript">
    function ValidatePhoneNumbers(source, args)
    {
        var phoneHome = document.getElementById('<%= PhoneHomeTextBox.ClientID %>')
        var phoneBusiness = document.getElementById('<%= PhoneBusinessTextBox.ClientID %>')
        if (phoneHome.value != '' || phoneBusiness.value != '')
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }

    }

</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="TableWrapper"> <!-- Tables cant be eisily resixed using slideUp and slideDown, by wrapping in the div it can be resised-->
        <table runat="server" id="FormTable" class="auto-style1">
            <tr>
                <td colspan="3" class="auto-style3">
                    <h1>Contact Us</h1>
                    <br />
                    We would love to hear from you! Enter Your name, e-mail address, and your home or business phone number to get in touch with us.</td>
            </tr>
            <tr>
                <td class="auto-style5">Name</td>
                <td class="auto-style7">
                    <asp:TextBox ID="NameTextBox" runat="server" CssClass="auto-style4" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Email</td>
                <td class="auto-style7">
                    <asp:TextBox ID="EmailAddressTextBox" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddressTextBox" CssClass="ErrorMessage" ErrorMessage="Enter a e-mail address">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddressTextBox" ErrorMessage="Enter an e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Confirm Email</td>
                <td class="auto-style7">
                    <asp:TextBox ID="ConfirmEmailTextBox" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailTextBox" CssClass="ErrorMessage" ErrorMessage="Confirm the e-mail address">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddressTextBox" ControlToValidate="ConfirmEmailTextBox" ErrorMessage="Email does not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Home phone number</td>
                <td class="auto-style7">
                    <asp:TextBox ID="PhoneHomeTextBox" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Business phone number</td>
                <td class="auto-style7">
                    <asp:TextBox ID="PhoneBusinessTextBox" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Comments</td>
                <td class="auto-style7">
                    <asp:TextBox ID="CommentsTextBox" runat="server" Height="93px" TextMode="MultiLine" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CommentsTextBox" CssClass="ErrorMessage" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors before you press the Send button:" />
                </td>
            </tr>
        </table>
        </div> <!--End of table wrapper-->
        <asp:Label ID="Message" runat="server" CssClass="Attention" Text="Message Sent" Visible="false"  />
        <p runat="server" id="MessageSentPara" visible="false"> Thank you for your message. We'll get in touch with you if necessary.</p>

    </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="PleaseWait">
            Please Wait...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
<script type="text/javascript">
    $(function () {
        $(':input[type=text], textarea').each
        (
            function () {
                var newText = 'Please enter your ' +
                    $(this).parent().prev().text().toLowerCase().trim();
                $(this).attr('value', newText);
            }
        ).one('focus', function () {
            this.value = '', this.className = ''
        }
        ).addClass('Watermark').css('width', '300px');
        $('form').bind('submit', function()
        {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(3000);
            }
        })
    });
    function pageLoad()
    {
        $('.Attention').animate({ width: '600px' }, 3000).animate({ width: '100px' }, 3000).fadeOut('slow');
    }

</script>


