<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XmlImageSlideShow.aspx.cs" Inherits="AjaxWebApplication.XmlImageSlideShow" %>

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
                    Image Displaying: <asp:Label ID="lblImageName" runat="server" Text="Label"></asp:Label><br />
                    Image Order: <asp:Label ID="lblImageOrder" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Stop slideshow" OnClick="Button1_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
