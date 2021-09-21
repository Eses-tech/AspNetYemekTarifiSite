<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="TarifPaylas.aspx.cs" Inherits="YemekTarifiSite.TarifPaylas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        text-align: center;
    }
    .auto-style13 {
        margin-left: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Tarif Adı:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="333px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="333px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Yapılışı:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifYapim" runat="server" Height="180px" TextMode="MultiLine" Width="333px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Tarif Resmi:</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="340px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Gonderen:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifGonderen" runat="server" Width="333px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>E-mail:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifGonderenMail" runat="server" TextMode="Email" Width="333px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style12"><strong>
            <asp:Button ID="BtnTarifPaylas" runat="server" BackColor="White" CssClass="auto-style13" Height="36px" Text="Tarif Paylaş" Width="97px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
    </tr>
</table>
</asp:Content>
