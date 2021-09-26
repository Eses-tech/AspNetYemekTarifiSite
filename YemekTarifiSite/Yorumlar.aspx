<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSite.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table style="width: 100%">
            <tr>
                <td style="width: 60px; text-align: right;"><strong>
                    <asp:Button ID="Button1" runat="server" style="font-weight: bold" Text="+" Width="48px" OnClick="Button1_Click" />
                    </strong></td>
                <td style="text-align: left"><strong>
                    <asp:Button ID="Button2" runat="server" style="font-weight: bold" Text="-" Width="48px" OnClick="Button2_Click" />
                    </strong></td>
                <td style="font-size: x-large">ONAYLANAN YORUMLAR</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 91px">&nbsp;</td>
                        <td style="width: 48px; text-align: right">&nbsp;</td>
                        <td style="text-align: left">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 91px">
                            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td style="width: 48px; text-align: right">
                            <a href='AdminYorumDetay.aspx?yorumid=<%#Eval("YorumId") %>'>
                            <asp:Image ID="Image3" runat="server" Height="31px" ImageUrl="~/iconlar/update.png" Width="46px" />
                            </a>
                        </td>
                        <td style="text-align: left">
                            <a href="Yorumlar.aspx?yorumid=<%#Eval("YorumId") %>&islem=sil"><asp:Image ID="Image6" runat="server" Height="31px" ImageUrl="~/iconlar/delete.png" Width="46px" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 91px">&nbsp;</td>
                        <td style="width: 48px; text-align: right">&nbsp;</td>
                        <td style="text-align: left">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC">
        <table style="border-top: thin groove #000000; width: 100%">
            <tr>
                <td style="text-align: right; width: 60px"><strong>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="font-weight: bold" Text="+" Width="48px" />
                    </strong></td>
                <td style="text-align: left"><strong>
                    <asp:Button ID="Button4" runat="server" style="font-weight: bold" Text="-" Width="48px" OnClick="Button4_Click" />
                    </strong></td>
                <td style="font-size: x-large">ONAYLANMAYAN YORUMLAR</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="width: 47px">
                            &nbsp;</td>
                        <td style="text-align: left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" style="color: #FFFFFF; font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td style="width: 47px"><a href='AdminYorumDetay.aspx?yorumid=<%#Eval("YorumId") %>'>
                            <asp:Image ID="Image5" runat="server" Height="31px" ImageUrl="~/iconlar/update.png" Width="46px" />
                            </a></td>
                        <td style="text-align: left">
                            <a href="Yorumlar.aspx?yorumid=<%#Eval("YorumId") %>&islem=sil"><asp:Image ID="Image7" runat="server" Height="31px" ImageUrl="~/iconlar/delete.png" Width="46px" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 47px">&nbsp;</td>
                        <td style="text-align: left">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
