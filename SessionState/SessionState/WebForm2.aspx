<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="SessionState.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:LinkButton ID="LinkButtonW2" runat="server" PostBackUrl="~/WebForm3.aspx" Font-Size="Large">Go to Page 3</asp:LinkButton>
        </div>
    </form>
</body>
</html>
