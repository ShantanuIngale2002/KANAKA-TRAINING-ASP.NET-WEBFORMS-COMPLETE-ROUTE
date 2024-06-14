<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="W01_INSERT.aspx.cs" Inherits="CRUD_withGridView_SQLDataSource.W01_INSERT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style01 {
            width: 40%;
            margin-left: 51px;
        }
        .auto-style2 {
            width: 196px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            text-align: center;
        height: 53px;
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
        .auto-style8 {
            text-align: center;
            height: 77px;
        }
    .auto-style9 {
        width: 196px;
        height: 36px;
    }
    .auto-style10 {
        width: 386px;
        height: 36px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellspacing="5" class="auto-style01">
        <tr>
            <td class="auto-style8" colspan="2">NEW REGISTERATION</td>
        </tr>
        <tr>
            <td class="auto-style2">Roll No :</td>
            <td class="auto-style5">
                <asp:TextBox ID="InsertRollno" runat="server" Height="32px" Width="186px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="InsertRollno" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Name :</td>
            <td class="auto-style5">
                <asp:TextBox ID="InsertName" runat="server" Height="32px" Width="186px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="InsertName" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Gender :</td>
            <td class="auto-style7">
                <asp:DropDownList ID="InsertGender" runat="server" Height="24px" Width="101px">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Class :</td>
            <td class="auto-style5">
                <asp:TextBox ID="InsertClass" runat="server" Height="32px" Width="186px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="InsertClass" Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="InsertClass" Display="Dynamic" ErrorMessage="RangeValidator" Font-Size="Large" ForeColor="#FF0066" MaximumValue="12" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Div :</td>
            <td class="auto-style10">
                <asp:DropDownList ID="InsertDiv" runat="server" Height="24px" Width="101px">
                    <asp:ListItem Selected="True">A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:Button ID="InsertButton" runat="server" CssClass="auto-style3" OnClick="InsertButton_Click" Text="INSERT" Width="108px" />
            </td>
        </tr>
    </table>
</asp:Content>
