<%@ Page Title="Ürün Arama" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Ürün Ara.aspx.cs" Inherits="Bilgisayar_Satış_Sitesi.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style6
    {
        text-decoration: underline;
    }
    .style9
    {
            height: 27px;
        }
    .style10
    {
        width: 45px;
        height: 25px;
    }
    .style11
    {
        width: 71px;
        height: 25px;
    }
        .style12
        {
            height: 12px;
        }
        .style13
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table class="style1">
        <tr>
            <td class="style9">
                İd&#39;ye Göre Ara:</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="İdyegörearaTxt" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Height="25px" Text="Arama Yap" 
                    Width="100px" onclick="Button1_Click" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                Fiyat Aralığına Göre Ara:</td>
            <td class="style11">
                <asp:TextBox ID="Fityatagörearatxt1" runat="server" Width="100px"></asp:TextBox>
            </td>
            <td class="style10">
                İle</td>
            <td class="style13">
                <asp:TextBox ID="Fiyatagörearatxt2" runat="server" style="margin-left: 0px" 
                    Width="100px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Height="25px" Text="Arama Yap" 
                    Width="100px" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style12" colspan="2">
                (Küçük Fiyat)</td>
            <td class="style12">
                (Büyük Fiyat)</td>
        </tr>
        <tr>
            <td class="style12">
                Kategoriye Göre Ara:</td>
            <td class="style12" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="dropdownlıstaccessdatasource" DataTextField="kategori" 
                    DataValueField="kategori" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:AccessDataSource ID="dropdownlıstaccessdatasource" runat="server" 
                    DataFile="~/App_Data/bilgisayar.mdb" 
                    SelectCommand="SELECT DISTINCT [kategori] FROM [urunler]">
                </asp:AccessDataSource>
            </td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="4">
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/bilgisayar.mdb" 
                    
                    SelectCommand="SELECT [id], [urun_adi], [Urun_Fiyat], [Urun_ResimURLSİ], [Urun_ozellikleri] FROM [urunler] WHERE ([id] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="İdyegörearaTxt" Name="id" PropertyName="Text" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    CellSpacing="2" DataKeyField="id" DataSourceID="AccessDataSource1" 
                    ForeColor="Black" GridLines="Both" RepeatColumns="3" 
                    RepeatDirection="Horizontal">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" />
                    <ItemTemplate>
                        <span class="style6"><strong>id: </strong></span>
                        <asp:Label ID="idLabel" runat="server" 
                            Text='<%# Eval("id") %>' />
                        <br />
                        <span class="style6"><strong>Ürün adı:</strong></span>
                        <asp:Label 
                            ID="urun_adiLabel" runat="server" 
                            Text='<%# Eval("urun_adi") %>' />
                        <br />
                        <span class="style6"><strong>Ürün Fiyatı:</strong></span>
                        <asp:Label ID="Urun_FiyatLabel" runat="server" 
                            Text='<%# Eval("Urun_Fiyat") %>' />
                        <br />
                        <strong>Ürün Özellikleri:</strong><asp:Label ID="Urun_ozellikleriLabel" 
                            runat="server" Text='<%# Eval("Urun_ozellikleri") %>' />
<br />
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="104px" 
                            ImageUrl='<%# Eval("Urun_ResimURLSİ") %>' Width="180px" />
                        <br />
                        <asp:ImageButton ID="ImageButton4" runat="server" 
                            ImageUrl="~/Styles/siparis_buton.gif" PostBackUrl="~/Sepete_Ekle.aspx" />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="4">
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                    DataFile="~/App_Data/bilgisayar.mdb" 
                    
                    SelectCommand="SELECT [id], [urun_adi], [Urun_Fiyat], [Urun_ozellikleri], [Urun_ResimURLSİ] FROM [urunler] WHERE (([Urun_Fiyat] &gt;= ?) AND ([Urun_Fiyat] &lt;= ?))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Fityatagörearatxt1" Name="Urun_Fiyat" 
                            PropertyName="Text" Type="Decimal" />
                        <asp:ControlParameter ControlID="Fiyatagörearatxt2" Name="Urun_Fiyat2" 
                            PropertyName="Text" Type="Decimal" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <asp:DataList ID="DataList2" runat="server" BackColor="#CCCCCC" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    CellSpacing="2" DataKeyField="id" DataSourceID="AccessDataSource2" 
                    ForeColor="Black" GridLines="Both" RepeatColumns="3" 
                    RepeatDirection="Horizontal">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" />
                    <ItemTemplate>
                        <span class="style6"><strong>Ürün Adı:</strong></span>
                        <asp:Label ID="urun_adiLabel" runat="server" 
                            Text='<%# Eval("urun_adi") %>' />
                        <br />
                        <span class="style6"><strong>Ürün Fiyatı:</strong></span>
                        <asp:Label ID="Urun_FiyatLabel" runat="server" 
                            Text='<%# Eval("Urun_Fiyat") %>' />
                        <br />
                        <span class="style6"><strong>Ürün Özellikleri: </strong></span>
                        <asp:Label ID="Urun_ozellikleriLabel" runat="server" 
                            Text='<%# Eval("Urun_ozellikleri") %>' />
                        <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="105px" 
                            ImageUrl='<%# Eval("Urun_ResimURLSİ") %>' Width="180px" />
                        <br />
                        <asp:ImageButton ID="ImageButton5" runat="server" 
                            ImageUrl="~/Styles/siparis_buton.gif" PostBackUrl="~/Sepete_Ekle.aspx" />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="4">
                <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                    DataFile="~/App_Data/bilgisayar.mdb" 
                    SelectCommand="SELECT DISTINCT [urun_adi], [Urun_Fiyat], [Urun_ozellikleri], [Urun_ResimURLSİ], [kategori] FROM [urunler] WHERE ([kategori] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="kategori" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <asp:DataList ID="DataList3" runat="server" BackColor="#CCCCCC" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    CellSpacing="2" DataSourceID="AccessDataSource3" 
                    ForeColor="Black" GridLines="Both" RepeatColumns="3" 
                    RepeatDirection="Horizontal">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" />
                    <ItemTemplate>
                        urun_adi:
                        <asp:Label ID="urun_adiLabel" runat="server" 
                            Text='<%# Eval("urun_adi") %>' />
                        <br />
                        kategori:
                        <asp:Label ID="kategoriLabel" runat="server" Text='<%# Eval("kategori") %>' />
                        <br />
                        Urun_Fiyat:
                        <asp:Label ID="Urun_FiyatLabel" runat="server" 
                            Text='<%# Eval("Urun_Fiyat") %>' />
                        <br />
                        Urun_ozellikleri:
                        <asp:Label ID="Urun_ozellikleriLabel" runat="server" 
                            Text='<%# Eval("Urun_ozellikleri") %>' />
                        <br />
                        &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="116px" 
                            ImageUrl='<%# Eval("Urun_ResimURLSİ") %>' Width="201px" />
                        <br />
                        <asp:ImageButton ID="ImageButton6" runat="server" 
                            ImageUrl="~/Styles/siparis_buton.gif" PostBackUrl="~/Sepete_Ekle.aspx" />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
        </tr>
    </table>
    </asp:Content>
