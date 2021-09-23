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
        .auto-style28 {
            text-align: left;
            height: 37px;
        }
        .auto-style29 {
            width: 55px;
        }
        .auto-style30 {
            width: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
        <div>
            
            <table class="auto-style15" style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                <tr>
                    <td class="auto-style29"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style27" Text="+" Width="48px" OnClick="Button2_Click" />
                        </strong></td>
                    <td><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style27" Text="-" Width="48px" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style21">KATEGORİLER LİSTESİ</td>
                </tr>
            </table>
        </div>
    </asp:Panel>
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
                            <a href="AdminKategoriDuzenleme.aspx?Kategoriid=<%#Eval("Id") %>"><asp:Image ID="Image3" runat="server" Height="31px" ImageUrl="~/iconlar/update.png" Width="46px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" BackColor="Silver" CssClass="auto-style11" Height="35px">
        <div class="auto-style28">
            
            <table class="auto-style15">
                <tr>
                    <td class="auto-style30"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style27" OnClick="Button4_Click" Text="+" Width="48px" />
                        </strong></td>
                    <td><strong>
                        <asp:Button ID="Button5" runat="server" CssClass="auto-style27" OnClick="Button5_Click" Text="-" Width="48px" />
                        </strong></td>
                    <td class="auto-style21">KATEGORİ EKLE</td>
                </tr>
            </table>
            
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Width="479px">
        <table style="color:white;">
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">KATEGORİ AD:</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox1" runat="server" Width="242px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">KATEGORİ ICON:</td>
                <td class="auto-style25">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="249px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
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
