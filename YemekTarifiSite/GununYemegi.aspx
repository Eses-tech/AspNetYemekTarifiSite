<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSite.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            font-size: xx-large;
        }
        .auto-style13 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text='<%# Eval("GunYemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("GunYemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Image ID="Image1" runat="server" Height="287px" ImageUrl="~/resimler/pacanga.jpg" Width="454px" />
                    </td>
                </tr>
                <tr>
                    <td><strong>Yapılış:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("GunYemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Puan:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("GunYemekPuan") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp; <strong>Eklenme Tarihi:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("GunYemekTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>
