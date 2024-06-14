<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SimpleLoginFormWithSQL.WebForm1" %>

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
            width: 30%;
            margin-left: 69px;
        }
        .auto-style2 {
            width: 562px;
        }
        .auto-style3 {
            width: 225px;
            text-align: center;
        }
        .auto-style4 {
            height: 40px;
            text-align: center;
        }
        .auto-style5 {
            height: 51px;
            text-align: center;
        }
        .auto-style6 {
            width: 225px;
            text-align: center;
            height: 44px;
        }
        .auto-style7 {
            width: 562px;
            height: 44px;
        }
        .auto-style9 {
            width: 225px;
            text-align: center;
            height: 38px;
        }
        .auto-style10 {
            width: 562px;
            height: 38px;
        }
    </style>

    <script type="text/javascript">
        // to make password visible for short time
        function showPassword(checkBox) {
            var PasswordTextbox = document.getElementById("passwordInput");
            if (checkBox.checked) {
                // change type to show text instead of password bullets
                PasswordTextbox.setAttribute("type", "text");
                // 0.5 sec show then again invisible
                setTimeout(() => {
                    checkBox.checked = false;
                    PasswordTextbox.setAttribute("type", "password");
                }, 500);
            }
            else {
                // if unchecked just change type
                PasswordTextbox.setAttribute("type", "password");
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="contentDiv">
            <table cellspacing="5" class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="2">LOGIN FORM</td>
                </tr>
                <tr>
                    <td class="auto-style6">Username : </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="userNameInput" runat="server" Height="25px" Width="190px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userNameInput" ErrorMessage="UsernameRequired" Font-Size="Large" ForeColor="#FF0066" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password : </td>
                    <td class="auto-style2">
                        <!-- For bullets as password change property of textbox as TextMode:Password -->
                        <asp:TextBox ID="passwordInput" runat="server" Height="25px" Width="190px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordInput" ErrorMessage="PasswordRequired" Font-Size="Large" ForeColor="#FF0066" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <!-- used ternary operator here to show password until check box is checked -->
                        <!--
                        <input type="checkbox" onchange="document.getElementById('userNameInput').type = (this.checked ? 'text' : 'password')" class="auto-style8" />
                        -->

                        <!-- used function here to show password when checkbox is checked but for only specific time -->
                        <!-- Function is defined in head of this file inside script -->
                        <input type="checkbox" onclick="showPassword(this)" />

                        Show Password
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Button ID="submitButton" runat="server" Height="35px" Text="Submit" Width="87px" OnClick="submitButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <a href="Signup.aspx"> Not Registered ? Signup here</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
