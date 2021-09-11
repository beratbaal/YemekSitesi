<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDüzenle.aspx.cs" Inherits="YemekDüzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table >
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>YEMEK AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="234px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>MALZEMELER:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="95px" TextMode="MultiLine" Width="234px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>TARİF:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="95px" TextMode="MultiLine" Width="234px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>KATEGORİ:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="234px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Yemek Güncelle" Width="234px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Günün Yemeği Seç" Width="234px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

