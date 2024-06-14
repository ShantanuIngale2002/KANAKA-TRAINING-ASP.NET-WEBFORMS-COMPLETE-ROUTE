<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="QueryString.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 39%;
            margin-left: 51px;
        }
        .auto-style2 {
            width: 490px;
        }
        .auto-style3 {
            width: 852px;
        }
        .auto-style4 {
            height: 44px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">Student ID :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="IdTextbox" runat="server" Height="33px" Width="209px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Student Name :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="NameTextbox" runat="server" Height="33px" Width="209px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Student Age :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="AgeTextbox" runat="server" Height="33px" Width="209px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Button ID="SubmitButtonW1" runat="server" Height="35px" OnClick="SubmitButtonW1_Click" Text="Submit" Width="120px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
