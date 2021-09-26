<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-size: large">
        <strong><span style="font-size: x-large; color: #000000;">Yorumlar</span></strong><asp:DataList ID="DataList2" runat="server" Width="235px">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>' style="font-weight: 700"></asp:Label>
                            :</td>
                    </tr>
                    </strong>
                    <tr>
                        <td style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                            <strong>&nbsp;- </strong>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumTarih") %>' style="font-size: x-small"></asp:Label>
                        </td>
                    </tr>
                    <strong>
                    </strong>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <div style="height: 24px; font-size: large; background-color: #999999; text-align: center;"><strong>Yorum Yapın:</strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right"><strong>E-Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right"><strong>Yorum:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Yorum Yap" Width="91px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
