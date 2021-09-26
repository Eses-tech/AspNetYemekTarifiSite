<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSite.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table style="width: 100%">
            <tr>
                <td style="text-align: left; width: 66px"><strong>
                    <asp:Button ID="Button1" runat="server" style="font-weight: bold" Text="+" Width="48px" OnClick="Button1_Click" />
                    </strong></td>
                <td style="text-align: left"><strong>
                    <asp:Button ID="Button2" runat="server" style="font-weight: bold" Text="-" Width="48px" OnClick="Button2_Click" />
                    </strong></td>
                <td style="font-size: x-large">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="color: #FFFFFF; width: 273px">
                            <a href="AdminMesajDetay.aspx?mesajid=<%#Eval("Id") %>"><asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("MesajGonderen") %>'></asp:Label></a>
                        </td>
                        <td style="width: 69px">
                            <a href="Mesajlar.aspx?mesajid=<%#Eval("Id") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/iconlar/delete.png" Width="46px" /></a>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
</asp:Content>
