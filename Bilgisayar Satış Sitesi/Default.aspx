<%@ Page Title="Anasayfa" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bilgisayar_Satış_Sitesi.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/bilgisayar.mdb" 
            SelectCommand="SELECT [id], [urun_adi], [Urun_Kodu], [Urun_ozellikleri], [Urun_ResimURLSİ] FROM [urunler]">
        </asp:AccessDataSource>
        <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataKeyField="id" DataSourceID="AccessDataSource1" 
            ForeColor="Black" GridLines="Both" RepeatColumns="3" 
            RepeatDirection="Horizontal" HorizontalAlign="Center" Width="749px">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" />
            <ItemTemplate>
                
                <strong>id:</strong>
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                <strong>Ürün Adı:</strong><asp:Label ID="urun_adiLabel" runat="server" 
                    Text='<%# Eval("urun_adi") %>' />
                <br />
                <strong>Ürün Kodu:</strong><asp:Label ID="Urun_KoduLabel" runat="server" 
                    Text='<%# Eval("Urun_Kodu") %>' />
                <br />
                <strong>Özellikleri:<br /> </strong>
                <asp:Label ID="Urun_ozellikleriLabel" runat="server" 
                    Text='<%# Eval("Urun_ozellikleri") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" Height="116px" 
                    ImageUrl='<%# Eval("Urun_ResimURLSİ") %>' Width="147px" />
                
                &nbsp;
                <br />
                <asp:ImageButton ID="ImageButton7" runat="server" 
                    ImageUrl="~/Styles/siparis_buton.gif" PostBackUrl="~/Sepete_Ekle.aspx" />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </p>
</asp:Content>
