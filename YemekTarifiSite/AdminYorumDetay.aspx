<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumDetay.aspx.cs" Inherits="YemekTarifiSite.AdminYorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right"><span style="color: #FFFFFF">Ad Soyad:</span></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF; text-align: right">E-Mail:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF; text-align: right">Yorum:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF; text-align: right">Yemek:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF">&nbsp;</td>
            <td style="text-align: center">
                <asp:Button ID="Button3" runat="server" Text="Onayla" Width="81px" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
