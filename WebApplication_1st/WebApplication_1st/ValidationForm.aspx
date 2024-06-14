<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ValidationForm.aspx.cs" Inherits="WebApplication_1st.ValidationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* this style is added automatically for this page while designing form -> table */
        .auto-style1 {
            width: 82%;
            height: 155px;
            margin-left: 99px;
        }
        .auto-style2 {
            width: 317px;
        }
        .auto-style4 {
            height: 50px;
        }
        .auto-style5 {
            width: 317px;
            height: 44px;
        }
        .auto-style6 {
            height: 44px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div>
            <!--
                we can code each thing but for learning we are
                using toolbox in view or the design tab below so that to drag-drop auto-generating
                Validation form's content for which classes/ids and also the internal css is added subsequently
                For any element we can just double click on it, which will take us into its server side script function.
             -->

            <!-- ------------------------------------------------------------------------------------------------- -->

            <!--
                to make use of validations you need to insert
                <appSettings>
	                <add key="validationSettings:UnobtrusiveValidationMode" value="none"/>
                </appSettings>
                in Web.config file inside <configuration> component
             -->

            <!-- ------------------------------------------------------------------------------------------------- -->

            <!--
                we can change properties/attributes of elements in design by right clicking and selecting properties
                such as -> 
                display - dynamic : for email validators to occupify same space or dynamically change as one or both appears
                focusOnError - true : focuses text box when errored
             -->

            <!-- ------------------------------------------------------------------------------------------------- -->

            <!-- Lets go through validators
                 
                Field Properties :
                    i. controlToValidate - ID of element to validate
                    ii. text - display's this text for error
                    ii. errorMessage - Content to be used as error like in summary.
                    iii. Display - static : stick to a place visible/not || dynamic : gets to first position if only one else came serially side to side
                
                1. RequiredFieldValidator : requires that the input must have some content but not null
                    ~ applied to all fields
                
                2. RegularExpressionValidator : checked against a regx expression depending upon which is selected must select one from pre-defined in properties.
                    ~ applied to email and re-enter email fields
                    ~ custom property >> "ValidationExpression" - we can select one from predefined regx's.
                
                3. CompareValidator : compared values from two fields for equality
                    ~ applied to re-enter email field
                    ~ custom property >> "ControlToCompare" - one field with which associated (controlToValidate) field is compared for value.
                
                4. ValidationSummary : Display ErrorMessages from errors occured where it is positioned
                    ~ Validating Errors may show any text like * in 2nd email but uses ErrorMessage value as error content to be displayed.

                5. RangeValidator : Values should between specified min and max
                    ~ applied to class field
                    ~ custom property >> "minimumValue" , "maximumValue" , "Type" - String/Int/Double... for class its 1, 12, integer.

                6. CustomValidator : This allows us to script our own defination for validation
                    ~ applied to Gender group
                    ~ here for male and female RadioButtons are used with below properties
                        - groupName > GenderGroup
                        - ID > MaleRadioButton and FemaleRadioButton
                    ~ double clicking Customer validator element we go into server side script where we can implement out logic

             -->

            <!-- ------------------------------------------------------------------------------------------------- -->



            <h2>This is Validation Form </h2>
            <table cellspacing="3" class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Font-Size="Large" Font-Underline="True" ForeColor="#FF0066" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter F_Name :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="370px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter first Name" SetFocusOnError="True" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter L_Name: </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="370px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter last name" SetFocusOnError="True" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Email : </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Width="370px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Email" SetFocusOnError="True" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Enter email neatly" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Re-Enter Email : </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" Width="370px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Re-Enter Email" SetFocusOnError="True" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Email must be same" ForeColor="#FF0066" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Enter 2nd Email :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" Width="370px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter 2nd Email" SetFocusOnError="True" Display="Dynamic" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Enter 2nd Email neatly" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Select Class :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" Width="370px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Class" SetFocusOnError="True" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Class 1 to 12" ForeColor="#FF0066" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer" ValidateRequestMode="Enabled"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Enter Gender :</td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="GenderGroup" Text="Male" />
                        <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="GenderGroup" Text="Female" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Select a Gender" ForeColor="#FF0066" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Enter Even Number :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 0px" Width="370px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter a Even Number" SetFocusOnError="True" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Not a even number" ForeColor="#FF0066" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True" Visible="False"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Button ID="Button1" runat="server" Height="45px" Text="Button" Width="95px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
           
        </div>
    </form>

</asp:Content>
