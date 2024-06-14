<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebForm_Learn03.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68%;
            margin-left: 122px;
        }
        .auto-style2 {
            width: 244px;
            text-align: center;
        }
        .auto-style3 {
            width: 536px;
            text-align: left;
        }
        .auto-style4 {
            width: 244px;
            height: 24px;
            text-align: center;
        }
        .auto-style5 {
            width: 536px;
            height: 24px;
            text-align: left;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            margin-left: 15px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style4">Enter Name :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="NameTextBox" runat="server" Width="303px" EnableViewState="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Name is compulosory" Font-Size="Medium" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Password : </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="PasswordTextBox" runat="server" Width="303px" EnableViewState="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Password is compulosory" Font-Size="Medium" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="ResetButton" runat="server" CssClass="auto-style8" OnClick="ResetButton_Click" Text="Reset" Width="135px" CausesValidation="False" />
                        <asp:Button ID="SubmitButton" runat="server" CssClass="auto-style7" OnClick="SubmitButton_Click" Text="Submit" Width="136px" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
