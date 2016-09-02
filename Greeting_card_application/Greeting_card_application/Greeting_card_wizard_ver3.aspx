<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Greeting_card_wizard_ver3.aspx.cs" Inherits="Greeting_card_application.Greeting_card_wizard_ver3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
  <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0"
BackColor="LemonChiffon" BorderStyle="Groove" BorderWidth="2px" CellPadding="10" Height="212px" Width="285px">
      <FinishNavigationTemplate>
          <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
          <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
      </FinishNavigationTemplate>
<WizardSteps>
<asp:WizardStep runat="server" Title="Step 1 - Colors">
Choose a foreground (text) color:<br />
    <asp:DropDownList ID="lstForeColor" runat="server" />
<br />
Choose a background color:<br />
<asp:DropDownList ID="lstBackColor" runat="server" />
</asp:WizardStep>
<asp:WizardStep runat="server" Title="Step 2 - Background">
Choose a border style:<br />
<asp:RadioButtonList ID="lstBorder" runat="server" RepeatColumns="2" />
<br /><br />
<asp:CheckBox ID="chkPicture" runat="server"
Text="Add the Default Picture" />
</asp:WizardStep>
<asp:WizardStep runat="server" StepType="Finish" Title="Step 3 - Text">
Choose a font name:<br />
<asp:DropDownList ID="lstFontName" runat="server" />
<br /><br />
Specify a font size:<br />
<asp:TextBox ID="txtFontSize" runat="server" />
<br /><br />
Enter the greeting text below:<br />
<asp:TextBox ID="txtGreeting" runat="server"
TextMode="MultiLine" />
</asp:WizardStep>
<asp:WizardStep runat="server" StepType="Complete" Title="Greeting Card">
<asp:Panel ID="pnlCard" runat="server" HorizontalAlign="Center">
<br />
<asp:Label ID="lblGreeting" runat="server" />
<asp:Image ID="imgDefault" runat="server" Visible="True" />
</asp:Panel>
</asp:WizardStep>
</WizardSteps>
</asp:Wizard>
        </form>
</body>
</html>