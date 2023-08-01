<%@ Page Title="Ziyaretçi Defteri" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ZiyaretciDefteriSayfası.aspx.cs" Inherits="Bilgisayar_Satış_Sitesi.ZiyaretciDefteriSayfası" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: large;
        }
    .style3
    {
        color: #000000;
    }
    .style4
    {
        color: #000000;
    }
        .style5
        {
            font-size: large;
            text-align: center;
            line-height: normal;
            margin: 0px auto;
            padding-left: 0px;
            padding-right: 0px;
            padding-top: 8px;
            padding-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <table class="style1">
            <tr>
                <td class="style3">
                    Adı:</td>
                <td>
                    <asp:TextBox ID="AdıTextbox" runat="server" Height="28px" MaxLength="20" 
                        ToolTip="Adınızı Giriniz."></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Soyadı:</td>
                <td>
                    <asp:TextBox ID="SoyadıTextbox" runat="server" Height="26px" MaxLength="20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    İli:</td>
                <td>
                    <asp:DropDownList ID="İliDropdownlist" runat="server" AutoPostBack="True" 
                        DataSourceID="AccessDataSource1" DataTextField="il_adi" DataValueField="il_adi" 
                        Height="30px" Width="125px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    İlçesi:</td>
                <td>
                    <asp:DropDownList ID="İlcesiDropdownlist" runat="server" 
                        DataSourceID="AccessDataSource2" DataTextField="ilce_adi" 
                        DataValueField="ilce_adi" Height="30px" Width="125px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Doğum Yılı:</td>
                <td>
                    <asp:DropDownList ID="DoğumyılıDropdownlist" runat="server" DataSourceID="AccessDataSource3" 
                        DataTextField="dogum_yili" DataValueField="dogum_yili" Height="30px" 
                        Width="125px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    İleti Şekli:</td>
                <td>
                    <asp:DropDownList ID="İletiŞekliDropDownlist" runat="server" 
                        DataSourceID="AccessDataSource4" DataTextField="ileti_turu" 
                        DataValueField="ileti_turu" Height="31px" Width="125px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Mesaj</td>
                <td>
                    <asp:TextBox ID="MesajTextbox" runat="server" Height="124px" TextMode="MultiLine" 
                        Width="486px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Kaydet" runat="server" Font-Bold="True" onclick="Kaydet_Click" 
                        Text="Gönder" Width="481px" />
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        DeleteMethod="Delete" InsertMethod="Insert" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                        TypeName="Bilgisayar_Satış_Sitesi.ZiyaretçidefteridatasetTableAdapters.Ziyaretci_DefteriTableAdapter" 
                        UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="AdıTextbox" Name="adi" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="SoyadıTextbox" Name="soyadi" 
                                PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="İliDropdownlist" Name="İli" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="İlcesiDropdownlist" Name="İlcesi" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DoğumyılıDropdownlist" Name="dogum_yili" 
                                PropertyName="SelectedValue" Type="Int16" />
                            <asp:ControlParameter ControlID="İletiŞekliDropDownlist" Name="ileti_sekli" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="MesajTextbox" Name="Mesaj" PropertyName="Text" 
                                Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="adi" Type="String" />
                            <asp:Parameter Name="soyadi" Type="String" />
                            <asp:Parameter Name="İli" Type="String" />
                            <asp:Parameter Name="İlcesi" Type="String" />
                            <asp:Parameter Name="dogum_yili" Type="Int16" />
                            <asp:Parameter Name="ileti_sekli" Type="String" />
                            <asp:Parameter Name="Mesaj" Type="String" />
                            <asp:Parameter Name="Original_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/bilgisayar.mdb" 
                        SelectCommand="SELECT DISTINCT [il_adi] FROM [İller]">
                    </asp:AccessDataSource>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/bilgisayar.mdb" 
                        SelectCommand="SELECT DISTINCT [ilce_adi] FROM [İller] WHERE ([il_adi] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="İliDropdownlist" Name="il_adi" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                        DataFile="~/App_Data/bilgisayar.mdb" 
                        SelectCommand="SELECT DISTINCT [dogum_yili] FROM [dogum_yili]">
                    </asp:AccessDataSource>
                    <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
                        DataFile="~/App_Data/bilgisayar.mdb" 
                        SelectCommand="SELECT DISTINCT [ileti_turu] FROM [İleti_şekli]">
                    </asp:AccessDataSource>
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <em><strong><span class="style5">Mesajınız Başarıyla Ulaşmıştır!</span></strong></em><br />
        <br />
    </asp:View>
</asp:MultiView>
    </asp:Content>
