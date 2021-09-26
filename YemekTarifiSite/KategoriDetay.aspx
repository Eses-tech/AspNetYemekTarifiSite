<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifiSite.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style7">
            <tr>
                <td><strong><a href="YemekDetay.aspx?Yemekid=<%#Eval("Id")%>" >
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image2" runat="server" Height="220px" ImageUrl='<%# Eval("YemekResim") %>' Width="615px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Yapılış:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Puan:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            &nbsp; -&nbsp; <strong>Eklenme Tarihi:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
