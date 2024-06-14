<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="W04_DELETE.aspx.cs" Inherits="CRUD_withGridView_SQLDataSource.W04_DELETE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;
            margin-left: 97px;
        }
        .auto-style4 {
            width: 185px;
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
    <table cellspacing="5" class="auto-style1">
        <tr>
            <td class="auto-style7" colspan="2">DELETE INFORMATION</td>
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
                <asp:Button ID="DeleteButton" runat="server" Height="35px" Text="DELETE" Width="85px" OnClick="DeleteButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
