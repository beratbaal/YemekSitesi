<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
    <ItemTemplate>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <h1 class="auto-style3"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style1"  Text='<%#Eval("YemekAd")%>'></asp:Label>
                        </strong></h1>
                    <br />
                    <strong>Malzemeler:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    <br />
                    <br />
                    <strong>Tarif: </strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="112px" ImageUrl="~/resimler/manti.jpg" Width="230px" />
                    <br />
                    <br />
                    <br />
                    <strong>Puan:</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    <br />
                    <strong>Tarih: </strong>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

