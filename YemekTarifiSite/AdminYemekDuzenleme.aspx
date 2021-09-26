<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYemekDuzenleme.aspx.cs" Inherits="YemekTarifiSite.AdminYemekDuzenleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="color: #FFFFFF">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #FFFFFF; text-align: center">YEMEK AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF; text-align: center">YEMEK MALZEME:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF; text-align: center">YEMEK TARİF:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="250px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF; text-align: center">KATEGORİ:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF; text-align: center">RESİM:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="299px" />
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" style="text-align: center" Text="Güncelle" Width="125px" />
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Height="38px" Text="Gunun Yemegi Sec" Width="154px" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
