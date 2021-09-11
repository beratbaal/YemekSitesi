<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="+"  Width="24px" Height="28px" OnClick="Button1_Click"  />
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="-" Width="24px" Height="28px" OnClick="Button2_Click"  />
            &nbsp;&nbsp;&nbsp;<strong>YEMEK LİSTESİ</strong></div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="499px">

            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("YemekAd")%>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/resimler/onay.png" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>

        </asp:DataList>
    </asp:Panel>
</asp:Content>

