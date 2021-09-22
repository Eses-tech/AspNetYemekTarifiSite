<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSite.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style16 {
        width: 266px;
        text-align: left;
    }
    .auto-style17 {
        width: 83%;
    }
    .auto-style18 {
        text-align: right;
    }
    .auto-style19 {
        text-align: right;
        width: 154px;
    }
    .auto-style20 {
        font-size: large;
        color: #FFFFFF;
        background-color: #000033;
    }
    .auto-style21 {
        font-size: x-large;
    }
        .auto-style22 {
            width: 245px;
        }
        .auto-style23 {
            width: 164px;
        }
        .auto-style25 {
            width: 164px;
            margin-left: 40px;
        }
        .auto-style26 {
            width: 164px;
            text-align: center;
            margin-left: 40px;
        }
        .auto-style27 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
        <span class="auto-style21">KATEGORİ LİSTESİ</span></asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="575px">
            <ItemTemplate>
                <table class="auto-style17">
                    <tr>
                        <td class="auto-style16"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style19">
                            <asp:Image ID="Image2" runat="server" Height="31px" ImageUrl="~/iconlar/delete.png" Width="46px" />
                        </td>
                        <td class="auto-style18">
                            <asp:Image ID="Image3" runat="server" Height="31px" ImageUrl="~/iconlar/update.png" Width="46px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="Silver">
        KATEGORİ EKLEME</asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Width="479px">
        <table style="color:white;">
            <tr>
                <td class="auto-style22">KATEGORİ AD:</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox1" runat="server" Width="268px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">KATEGORİ ICON:</td>
                <td class="auto-style25">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="274px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style26"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style27" Height="34px" OnClick="Button1_Click" Text="EKLE" Width="94px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
        </table>
        </asp:Panel>
</asp:Content>
