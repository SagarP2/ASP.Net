﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminM/admin.Master" AutoEventWireup="true" CodeBehind="AddPhotographer.aspx.cs" Inherits="Event_Managament_Sysyem.AdminM.AddPhotographer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <style type="text/css">
        .style12 {
            width: 145px;
        }

        .style14 {
            width: 132px;
        }

        .style17 {
            height: 21px;
        }
        .A{
            margin-left:500px;
        }
    </style>

    <table class="style1" style="height: 256px; width: 50%; border: 2px solid; margin-left: 500px; margin-top: 50px">
        <tr>
            <td colspan="2" class="tblhead">Add Photographer</td>
        </tr>
        <tr>
            <td class="style12">&nbsp;</td>
            <td class="style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="style12">&nbsp;</td>
            <td class="style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="lbl">Photographer Name : </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtname" runat="server" placeholder="Enter Photographer Name" CssClass="txt" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtname" ErrorMessage="Enter Photographer"
                    ForeColor=" #ADD8E6"></asp:RequiredFieldValidator>
            </td>
        </tr>
       <tr>
            <td class="lbl">Price Per Day : </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtprice" runat="server" placeholder="Enter Price Per Plate" CssClass="txt" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtprice" ErrorMessage="Enter price" ForeColor=" #ADD8E6"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidatorprice" runat="server" ErrorMessage="4 to 6" ClientValidationFunction="chkpwdlen" ControlToValidate="txtprice" Display="Dynamic" ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style17"></td>
            <td style="text-align: left" class="style17">
                <asp:Button ID="btnadd" runat="server" CssClass="btn"
                    Style="margin-top: 14px" Text="Add Photographer" Width="200px"
                    Height="40px" OnClick="btnadd_Click" />
            </td>

        </tr>
       
        <tr>
            <td class="style17">&nbsp;</td>
            <td style="text-align: left" class="style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="style12">&nbsp;</td>
            <td class="style14"></td>
        </tr>

    </table>
    
    <div class="A">
    <asp:GridView runat="server" ID="GridViewPhotographer" CssClass="gridview" AutoGenerateColumns="true"></asp:GridView>
</div>


</asp:Content>
