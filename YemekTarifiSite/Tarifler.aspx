<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifiSite.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table style="width: 100%">
            <tr>
                <td style="text-align: left; width: 66px"><strong>
                    <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" style="font-weight: bold" Text="+" Width="46px" />
                    </strong></td>
                <td style="text-align: left"><strong>
                    <asp:Button ID="Button2" runat="server" Height="31px" OnClick="Button2_Click" style="font-weight: bold" Text="-" Width="46px" />
                    </strong></td>
                <td style="font-size: x-large">ONAYLANANLAR</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="706px">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="color: #FFFFFF; width: 273px">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td style="width: 69px">
                            <a href="AdminTarifDetay.aspx?tarifid=<%#Eval("Id") %>"><asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/iconlar/goruntuleme.jpg" Width="46px" /></a>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC">
        <table style="width: 100%">
            <tr>
                <td style="text-align: left; width: 66px"><strong>
                    <asp:Button ID="Button3" runat="server" Height="31px" style="font-weight: bold" Text="+" Width="46px" OnClick="Button3_Click" />
                    </strong></td>
                <td style="text-align: left"><strong>
                    <asp:Button ID="Button4" runat="server" Height="31px"  style="font-weight: bold" Text="-" Width="46px" OnClick="Button4_Click" />
                    </strong></td>
                <td style="font-size: x-large">ONAYLANMAYANLAR</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="706px">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="color: #FFFFFF; width: 273px">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td style="width: 69px">
                            <a href="AdminTarifDetay.aspx?tarifid=<%#Eval("Id") %>"><asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/iconlar/goruntuleme.jpg" Width="46px" /></a>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
       
</asp:Content>
