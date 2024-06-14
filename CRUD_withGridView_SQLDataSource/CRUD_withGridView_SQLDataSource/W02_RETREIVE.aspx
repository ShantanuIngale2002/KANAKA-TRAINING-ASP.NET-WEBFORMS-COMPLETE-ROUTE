<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="W02_RETREIVE.aspx.cs" Inherits="CRUD_withGridView_SQLDataSource.W02_RETREIVE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;
            margin-left: 97px;
        }
        .auto-style2 {
            width: 191px;
        }
        .table-2{
            margin-top : 100px;
        }
        .auto-style4 {
            width: 146px;
            height: 68px;
        }
        .auto-style5 {
            height: 68px;
            width: 296px;
        }
        .auto-style6 {
            text-align: center;
            height: 61px;
        }
        .auto-style7 {
            height: 68px;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table cellspacing="5" class="auto-style1">
            <tr>
                <td class="auto-style7" colspan="2">VIEW PROFILE INFORMATION</td>
            </tr>
            <tr>
                <td class="auto-style4">Enter Roll no : </td>
                <td class="auto-style5">
                    <asp:TextBox ID="getRollnoTextbox" runat="server" Height="33px" Width="208px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="getRollnoTextbox" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:Button ID="RetreiveButton" runat="server" Height="35px" Text="Retreive" Width="85px" OnClick="RetreiveButton_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div class="table-2">

        <table cellspacing="5" class="auto-style1">
            <tr>
                <td class="auto-style2">Roll no : </td>
                <td>
                    <asp:TextBox ID="RetreiveRollno" runat="server" Height="33px" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Name :</td>
                <td>
                    <asp:TextBox ID="RetreiveName" runat="server" Height="33px" Width="208px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Gender :</td>
                <td>
                    <asp:TextBox ID="RetreiveGender" runat="server" Height="33px" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Class :</td>
                <td>
                    <asp:TextBox ID="RetreiveClass" runat="server" Height="33px" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Div :</td>
                <td>
                    <asp:TextBox ID="RetreiveDiv" runat="server" Height="33px" Width="208px"></asp:TextBox>
                </td>
            </tr>
            </table>

    </div>
</asp:Content>
