<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-syle4{
            background-color:grey;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-syle4">
        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="+"  Width="24px" Height="28px" OnClick="Button1_Click"/>
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="-" Width="24px" Height="28px" />
            &nbsp;&nbsp;&nbsp;<strong>KATEGORİLER</strong></div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                        <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil"><asp:Image ID="Image2" runat="server" ImageUrl="~/resimler/delete.png" /></a> 
                        </td>
                        <td class="auto-style2">
                          <a href="KategoriAdminDetay.aspx?Kategoriid=<%#Eval("Kategoriid")%>"> <asp:Image ID="Image3" runat="server" ImageUrl="~/resimler/uptade.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-syle4">
        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="+" Width="24px" Height="28px" OnClick="Button3_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Height="28px" Text="-" Width="24px" OnClick="Button4_Click" />
            &nbsp;&nbsp;&nbsp;<strong>KATEGORİ EKLEME</strong></div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>  
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Kategori Ekle" OnClick="Button5_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

