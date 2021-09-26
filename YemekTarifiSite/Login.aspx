<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YemekTarifiSite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div style="text-align: center; background-color: #CCCCCC;">
            <strong><span style="font-size: x-large">Sisteme Giriş Paneli</span></strong></div>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div style="text-align: center">
            <table style="width: 100%">
                <tr>
                    <td>&nbsp;</td>
                    <td style="text-align: left">&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Kullanıcı Adı:</strong></td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><strong>Parola:</strong></td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" Width="71px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="text-align: left">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="text-align: left">&nbsp;</td>
                </tr>
            </table>
        </div>
</asp:Panel>
</asp:Content>
