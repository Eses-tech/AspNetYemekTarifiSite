<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifiSite.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
        text-align: right;
        width: 218px;
    }
    .auto-style16 {
        text-align: left;
    }
    .auto-style17 {
        text-align: left;
        font-size: x-large;
    }
    .auto-style18 {
        text-align: right;
        width: 218px;
        height: 29px;
    }
    .auto-style19 {
        height: 29px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
    <tr>
        <td class="auto-style17" colspan="2"><strong>Bize Ulaşın:</strong></td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>E-mail:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style18"><strong>Konu:</strong></td>
        <td class="auto-style19">
            <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="180px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style16">
            <asp:Button ID="Button1" runat="server" BackColor="White" Height="34px" OnClick="Button1_Click" Text="Gönder" Width="99px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
</table>
</asp:Content>
