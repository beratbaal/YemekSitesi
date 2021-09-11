<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 408px;
        text-align: center;
    }
    .auto-style4 {
        margin-left: 0px;
    }
    .auto-style5 {
        margin-left: 80px;
    }
    .auto-style6 {
        margin-left: 160px;
    }
    .auto-style7 {
        width: 408px;
        text-align: center;
        height: 35px;
    }
    .auto-style8 {
        height: 35px;
        margin-left: 160px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style3"><strong>Tarif Ad:</strong></td>
        <td class="auto-style5">
            <asp:TextBox ID="TxtAd" runat="server" CssClass="auto-style4" Width="252px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Malzemeler:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="74px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Yapılış:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtYapilis" runat="server" Height="76px" TextMode="MultiLine" Width="251px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Resim:</strong></td>
        <td class="auto-style6">
            <asp:FileUpload ID="TxtResim" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Tarif Öneren:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtSahip" runat="server" Width="253px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Mail Adresi:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="254px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style8">
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#66FFFF" CssClass="auto-style4" Text="Tarif Öner" Width="144px" OnClick="BtnTarifOner_Click" />
        </td>
    </tr>
</table>
</asp:Content>

