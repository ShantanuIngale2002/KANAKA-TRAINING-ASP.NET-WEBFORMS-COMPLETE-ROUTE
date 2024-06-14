<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SimpleLoginFormWithSQL.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #contentDiv{
            display:flex;
            justify-content:center;
            align-items:center;
        }
        .auto-style1 {
            width: 40%;
            margin-left: 35px;
        }
        .auto-style2 {
            width: 200px;
            text-align: center;
        }
        .auto-style3 {
            width: 200px;
            height: 29px;
            text-align: center;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            text-align: center;
            height: 43px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            width: 200px;
            height: 32px;
            text-align: center;
        }
        .auto-style8 {
            height: 32px;
        }
    </style>

    <script type="text/javascript">
    // to make password visible for short time
        function showPassword(checkBox, passwordTextbox) {
        if (checkBox.checked) {
            // change type to show text instead of password bullets
            passwordTextbox.setAttribute("type", "text");
            // 0.5 sec show then again invisible
            setTimeout(() => {
                checkBox.checked = false;
                passwordTextbox.setAttribute("type", "password");
            }, 500);
        }
        else {
            // if unchecked just change type
            passwordTextbox.setAttribute("type", "password");
        }
    }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="contentDiv">
            <table cellspacing="5" class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="2">SIGNUP FORM</td>
                </tr>
                <tr>
                    <td class="auto-style2">Name : </td>
                    <td>
                        <asp:TextBox ID="NameTextbox" runat="server" Height="24px" Width="165px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextbox" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Gender :</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="GenderDropDown" runat="server" Height="26px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="100px">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email :</td>
                    <td>
                        <asp:TextBox ID="EmailTextbox" runat="server" Height="24px" Width="165px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextbox" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextbox" Display="Dynamic" ErrorMessage="EmailRegxError" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Regx</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Username : </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="UsernameTextbox" runat="server" Height="24px" Width="165px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UsernameTextbox" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password : </td>
                    <td>
                        <asp:TextBox ID="PasswordTextbox" runat="server" Height="24px" TextMode="Password" Width="165px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PasswordTextbox" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PasswordTextbox" Display="Dynamic" ErrorMessage="PasswordRegxError" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^a-zA-Z\d]).{8,}$">Regx</asp:RegularExpressionValidator>
                        <input type="checkbox" onclick="showPassword(this, document.getElementById('PasswordTextbox'))" />Show
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password : </td>
                    <td>
                        <asp:TextBox ID="CPasswordTextbox" runat="server" Height="24px" TextMode="Password" Width="165px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="CPasswordTextbox" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextbox" ControlToValidate="CPasswordTextbox" ErrorMessage="CPasswordValidator" Font-Size="Large" ForeColor="#FF0066" SetFocusOnError="True" Display="Dynamic">not equal</asp:CompareValidator>
                        <input type="checkbox" onclick="showPassword(this, document.getElementById('CPasswordTextbox'))" />Show
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="SignupButton" runat="server" Height="29px" Text="Signup" Width="99px" OnClick="SignupButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <a href="Login.aspx"> Registered ? Login here </a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
