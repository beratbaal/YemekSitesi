<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-syle4{
            background-color:grey;
        }
        .auto-style2 {
            margin-right: 0px;
        }
    .auto-style3 {
        text-align: right;
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
            &nbsp;&nbsp;<strong>ONAYLANAN YORUM LİSTESİ</strong></div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="496px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/resimler/delete.png" />
                        </td>
                        <td class="auto-style3">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/resimler/uptade.png" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="+"  Width="24px" Height="28px" OnClick="Button3_Click"  />
            &nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="-" Width="24px" Height="28px" OnClick="Button4_Click"  />
            &nbsp;&nbsp;<strong>ONAYSIZ YORUM LİSTESİ</strong></div> </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style2" Width="500px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/resimler/delete.png" />
                        </td>
                        <td class="auto-style3">
                          <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>">  <asp:Image ID="Image5" runat="server" ImageUrl="~/resimler/uptade.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
     
        </asp:Panel>
</asp:Content>

