<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="W03_UPDATE.aspx.cs" Inherits="CRUD_withGridView_SQLDataSource.W03_UPDATE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;
            margin-left: 51px;
        }
        .auto-style2 {
            width: 196px;
        }
        .auto-style5 {
            width: 386px;
        }
        .auto-style6 {
            width: 196px;
            height: 33px;
        }
        .auto-style7 {
            width: 386px;
            height: 33px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style8 {
            text-align: center;
            height: 57px;
        }
        .auto-style9 {
            width: 196px;
            height: 60px;
        }
        .auto-style10 {
            width: 386px;
            height: 60px;
        }
        .auto-style11 {
            text-align: center;
            height: 43px;
        }
        .auto-style12 {
            text-align: center;
            height: 42px;
        }
        .auto-style13 {
            text-align: center;
            height: 56px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table cellspacing="5" class="auto-style1">
            <tr>
                <td class="auto-style8" colspan="2">UPDATE PROFILE</td>
            </tr>
            <tr>
                <td class="auto-style9">Roll No :</td>
                <td class="auto-style10">
                    <asp:TextBox ID="GetInfoRollno" runat="server" Height="32px" Width="186px" ValidationGroup="rollnoGroup"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="GetInfoRollno" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF0066" ValidationGroup="rollnoGroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <asp:Button ID="GetInfoButton" runat="server" CssClass="auto-style3" OnClick="GetInfoButton_Click" Text="GetInfo" Width="108px" ValidationGroup="rollnoGroup" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table cellspacing="5" class="auto-style1">
            <tr>
                <td class="auto-style13" colspan="2">EDIT HERE TO UPDATE</td>
            </tr>
            <tr>
                <td class="auto-style2">Name :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="UpdateName" runat="server" Height="32px" Width="186px" ValidationGroup="restGroup"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UpdateName" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF0066" ValidationGroup="restGroup">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Gender :</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="UpdateGender" runat="server" Height="24px" Width="101px" ValidationGroup="restGroup">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Class :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="UpdateClass" runat="server" Height="32px" Width="186px" ValidationGroup="restGroup"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UpdateClass" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF0066" ValidationGroup="restGroup">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="UpdateClass" Display="Dynamic" ErrorMessage="RangeValidator" Font-Size="Large" ForeColor="#FF0066" MaximumValue="12" MinimumValue="1" Type="Integer" ValidationGroup="restGroup">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Div :</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="UpdateDiv" runat="server" Height="24px" Width="101px" ValidationGroup="restGroup">
                        <asp:ListItem Selected="True">A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Button ID="UpdateButton" runat="server" CssClass="auto-style3" OnClick="UpdateButton_Click" Text="UPDATE" Width="108px" ValidationGroup="restGroup" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
