<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSite.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            font-size: xx-large;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style19 {
            height: 277px;
        }
        .auto-style20 {
            font-size: large;
        }
        .auto-style21 {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
    <div>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" style="font-size: x-large; font-weight: 700" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><span class="auto-style21"><strong>Malzemeler:</strong></span><asp:Label ID="Label4" runat="server" CssClass="auto-style21" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
                            <asp:Image ID="Image2" runat="server" Height="275px" ImageUrl='<%# Eval("YemekResim") %>' Width="677px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21"><strong>Yapılış:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style20"><strong><span class="auto-style21">Puan:</span></strong><span class="auto-style21"><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            &nbsp; - <strong>Eklenme Tarihi:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </span></td>
                    </tr>
                    <tr>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    
    
    
</asp:Content>
