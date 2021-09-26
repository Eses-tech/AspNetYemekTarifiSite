<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesajDetay.aspx.cs" Inherits="YemekTarifiSite.AdminMesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="330px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">E-mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="330px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">Başlık:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="330px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">Mesaj:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="330px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">&nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">&nbsp;</td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
