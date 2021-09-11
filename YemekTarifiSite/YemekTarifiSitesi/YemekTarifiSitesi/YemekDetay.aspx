<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
            color:white;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            font-size: x-small;
        }
        .auto-style5 {
            font-size: x-large;
            color: #0066FF;
        }
        .cizgi{
            width:500px;
        }
    .auto-style6 {
        text-align: right;
    }
    .auto-style7 {
        text-align: right;
        height: 27px;
    }
    .auto-style8 {
        height: 27px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <hr class="cizgi"/>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        <strong>&nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <br />
    </strong>
        <div style="background-color:grey;">Yorum Paneli</div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style3">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Ad Soyad:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="244px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Mail:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" Width="245px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Yorumunuz:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="148px" TextMode="MultiLine" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" Width="255px" />
                    </td>
                </tr>
            </table>
    </asp:Panel>
    </asp:Content>

