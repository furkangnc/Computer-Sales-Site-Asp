<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sepete_Ekle.aspx.cs" Inherits="Bilgisayar_Satış_Sitesi.satınal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
        }
        .style4
        {
            font-size: large;
            font-weight: bold;
        }
        .style6
        {
            width: 133px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <table class="style1">
                    <tr>
                        <td class="style6">
                            TcKimlikNo:</td>
                        <td>
                            <asp:TextBox ID="tckimliktextbox" runat="server" Height="25px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Adı:</td>
                        <td>
                            <asp:TextBox ID="AdıTextbox" runat="server" Height="25px" MaxLength="50" 
                                Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            SoyAdı:</td>
                        <td>
                            <asp:TextBox ID="SoyAdıTextbox" runat="server" Height="25px" MaxLength="50" 
                                Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            E-mail:</td>
                        <td>
                            <asp:TextBox ID="EmailTextbox" runat="server" Height="25px" MaxLength="50" 
                                Width="160px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Cep Telefonu:</td>
                        <td>
                            <asp:TextBox ID="CepTelefonTextbox" runat="server" Height="25px" MaxLength="11" 
                                Width="160px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Adresi:</td>
                        <td>
                            <asp:TextBox ID="adresTextbox" runat="server" Height="99px" MaxLength="50" 
                                TextMode="MultiLine" Width="301px"></asp:TextBox>
                            <br />
                            &nbsp;
                            <asp:Button ID="Button1" runat="server" Height="25px" onclick="Button1_Click" 
                                Text="Gönder" Width="160px" />
                            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                DeleteMethod="Delete" InsertMethod="Insert" 
                                OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                                TypeName="Bilgisayar_Satış_Sitesi.SepeteEkleDataSEtTableAdapters.Sepete_EkleTableAdapter" 
                                UpdateMethod="Update">
                                <DeleteParameters>
                                    <asp:Parameter Name="Original_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="tckimliktextbox" Name="tckimlik" 
                                        PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="AdıTextbox" Name="adi" PropertyName="Text" 
                                        Type="String" />
                                    <asp:ControlParameter ControlID="SoyAdıTextbox" Name="soyadi" 
                                        PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="CepTelefonTextbox" Name="cep_telefonu" 
                                        PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="EmailTextbox" Name="_e_mail" 
                                        PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="EmailTextbox" Name="adresi" 
                                        PropertyName="Text" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="tckimlik" Type="Int32" />
                                    <asp:Parameter Name="adi" Type="String" />
                                    <asp:Parameter Name="soyadi" Type="String" />
                                    <asp:Parameter Name="cep_telefonu" Type="Int32" />
                                    <asp:Parameter Name="_e_mail" Type="String" />
                                    <asp:Parameter Name="adresi" Type="String" />
                                    <asp:Parameter Name="Original_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <span class="style4">Şepete Başarıyla Eklenmiştir!</span>
            </asp:View>
        </asp:MultiView>
    </p>
    <p>
        <br />
    </p>
</asp:Content>
