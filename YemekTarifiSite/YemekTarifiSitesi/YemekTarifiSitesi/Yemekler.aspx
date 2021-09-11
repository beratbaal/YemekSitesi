<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-syle4{
            background-color:grey;
        }
        .auto-style4 {
            margin-left: 40px;
            height: 42px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            width: 101%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-syle4">
        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="+"  Width="24px" Height="28px" OnClick="Button1_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="-" Width="24px" Height="28px" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;<strong>YEMEK LİSTESİ</strong></div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="494px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("YemekAd")%>'></asp:Label>
                        </td>
                        <td>
                        <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil">  <asp:Image ID="Image2" runat="server" ImageUrl="~/resimler/delete.png" /></a> 
                        </td>
                        <td>
                       <a href="YemekDüzenle.aspx?Yemekid=<%#Eval("Yemekid")%>"><asp:Image ID="Image3" runat="server" ImageUrl="~/resimler/uptade.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-syle4">
        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="+" Width="24px" Height="28px" OnClick="Button3_Click"  />
            &nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Height="28px" Text="-" Width="24px" OnClick="Button4_Click"  />
            &nbsp;&nbsp;&nbsp;<strong>YEMEK EKLEME</strong></div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="231px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">MALZEMELER:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="231px" Height="70px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİF:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="231px" Height="70px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="231px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Yemek Ekle" OnClick="Button5_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>



