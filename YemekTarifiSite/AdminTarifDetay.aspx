<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifDetay.aspx.cs" Inherits="YemekTarifiSite.AdminTarifDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; color: #FFFFFF;"><strong>Tarif Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; color: #FFFFFF;"><strong>Tarif Malzeme:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="250px" Height="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; color: #FFFFFF;"><strong>Tarif Yapım:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; text-align: right"><strong>Tarif Gönderen:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; text-align: right"><strong>E-Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="250px" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; text-align: right"><strong>Kategori:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="259px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="35px" Text="Onayla" Width="91px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>
