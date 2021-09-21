<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            font-size: x-large;
        }
        .auto-style13 {
            font-size: large;
        }
    .auto-style14 {
        font-size: medium;
    }
        .auto-style15 {
            background-color: #EEE7D5;
        }
        .auto-style16 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style12">
        <strong>Yorumlar<asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style13" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            :</td>
                    </tr>
                    </strong>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style14" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <div class="auto-style15">Yorum Yapın:</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style7">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">E-mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Yorum:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="White" Height="24px" OnClick="Button1_Click" Text="Yorum Yap" Width="119px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
