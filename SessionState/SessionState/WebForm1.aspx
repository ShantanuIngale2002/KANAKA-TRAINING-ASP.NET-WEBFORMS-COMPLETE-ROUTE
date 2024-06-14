<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SessionState.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            margin-left: 32px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 383px;
            height: 26px;
            text-align: center;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Username</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="userTextBoxW1" runat="server" Height="35px" Width="222px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Button ID="submitButtonW1" runat="server" OnClick="SubmitButtonW1_Click" Text="Submit" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
