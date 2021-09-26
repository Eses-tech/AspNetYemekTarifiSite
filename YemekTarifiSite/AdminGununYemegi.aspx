<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminGununYemegiaspx.aspx.cs" Inherits="YemekTarifiSite.AdminGununYemegiaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table style="width: 100%">
            <tr>
                <td style="width: 60px"><strong>
                    <asp:Button ID="Button1" runat="server" Height="31px" style="font-weight: bold" Text="+" Width="46px" OnClick="Button1_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" Height="31px" style="font-weight: bold" Text="-" Width="46px" OnClick="Button2_Click" />
                    </strong></td>
                <td style="font-size: x-large">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 309px">
                            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td>
                            <a href="AdminYemekDuzenleme.aspx?yemekid=<%#Eval("Id") %>"><asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/iconlar/sec.png" Width="46px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
</asp:Content>
