<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ÜrünEkle.aspx.cs" Inherits="Bilgisayar_Satış_Sitesi.Account.ÜrünEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                    AutoGenerateRows="False" BackColor="White" BorderColor="#3366CC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" 
                    DataSourceID="ObjectDataSource1" Height="50px" Width="195px">
                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="urun_adi" HeaderText="urun_adi" 
                            SortExpression="urun_adi" />
                        <asp:BoundField DataField="Urun_Kodu" HeaderText="Ürün Kodu" 
                            SortExpression="Urun_Kodu" />
                        <asp:BoundField DataField="Stok_Miktarı" HeaderText="Stok_Miktarı" 
                            SortExpression="Stok_Miktarı" />
                        <asp:BoundField DataField="Urun_Fiyat" HeaderText="Urun_Fiyat" 
                            SortExpression="Urun_Fiyat" />
                        <asp:BoundField DataField="Urun_ResimURLSİ" HeaderText="Urun_ResimURLSİ" 
                            SortExpression="Urun_ResimURLSİ" />
                        <asp:BoundField DataField="Urun_ozellikleri" HeaderText="Urun_ozellikleri" 
                            SortExpression="Urun_ozellikleri" />
                        <asp:BoundField DataField="kategori" HeaderText="kategori" 
                            SortExpression="kategori" />
                        <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Güncelle" 
                            InsertText="Ekle" NewText="Yeni Ekle" SelectText="Seç" ShowDeleteButton="True" 
                            ShowEditButton="True" ShowInsertButton="True" UpdateText="Güncelle" />
                    </Fields>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                </asp:DetailsView>
                            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                                AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ObjectDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="urun_adi" HeaderText="Ürün Adı" 
                                        SortExpression="urun_adi" />
                                    <asp:BoundField DataField="Urun_Kodu" HeaderText="Ürün Kodu" 
                                        SortExpression="Urun_Kodu" />
                                    <asp:BoundField DataField="Stok_Miktarı" HeaderText="Stok Miktarı" 
                                        SortExpression="Stok_Miktarı" />
                                    <asp:BoundField DataField="Urun_Fiyat" HeaderText="Ürün Fiyatı" 
                                        SortExpression="Urun_Fiyat" />
                                    <asp:BoundField DataField="Urun_ozellikleri" HeaderText="Ürün Özellikleri" 
                                        SortExpression="Urun_ozellikleri" />
                                    <asp:BoundField DataField="kategori" HeaderText="Kategori" 
                                        SortExpression="kategori" />
                                    <asp:ImageField DataAlternateTextField="Urun_ResimURLSİ" 
                                        DataImageUrlField="Urun_ResimURLSİ" HeaderText="Ürün Resmi">
                                        <ControlStyle Height="50px" Width="100px" />
                                    </asp:ImageField>
                                </Columns>
                            </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    DeleteMethod="Delete" InsertMethod="Insert" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="Bilgisayar_Satış_Sitesi.ÜrünEkleDataSetTableAdapters.urunlerTableAdapter" 
                    UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="urun_adi" Type="String" />
                        <asp:Parameter Name="Urun_Kodu" Type="Int32" />
                        <asp:Parameter Name="Stok_Miktarı" Type="Int32" />
                        <asp:Parameter Name="Urun_Fiyat" Type="Decimal" />
                        <asp:Parameter Name="Urun_ResimURLSİ" Type="String" />
                        <asp:Parameter Name="Urun_ozellikleri" Type="String" />
                        <asp:Parameter Name="kategori" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="urun_adi" Type="String" />
                        <asp:Parameter Name="Urun_Kodu" Type="Int32" />
                        <asp:Parameter Name="Stok_Miktarı" Type="Int32" />
                        <asp:Parameter Name="Urun_Fiyat" Type="Decimal" />
                        <asp:Parameter Name="Urun_ResimURLSİ" Type="String" />
                        <asp:Parameter Name="Urun_ozellikleri" Type="String" />
                        <asp:Parameter Name="kategori" Type="String" />
                        <asp:Parameter Name="Original_id" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
