<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxPartialPageUpdate.aspx.cs" Inherits="AjaxWebApplication.AjaxPartialPageUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                </Triggers>
                <ContentTemplate>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:Button ID="Button2" runat="server" Text="Button" />
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
                    <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br />
                    <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel4">
                <ProgressTemplate>
                    An update is in progress...
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>
    </form>
</body>
</html>
