<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RandomImageSlideShow.aspx.cs" Inherits="AjaxWebApplication.RandomImageSlideShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                <asp:Image ID="Image1" runat="server" Height="200" Width="200" /><br />
                ImageDisplaying: <asp:Label ID="lblImageDisplaying" runat="server" Text="Label"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
