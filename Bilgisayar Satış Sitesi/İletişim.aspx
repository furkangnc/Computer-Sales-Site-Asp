<%@ Page Title="İletişim" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="İletişim.aspx.cs" Inherits="Bilgisayar_Satış_Sitesi.İletişim" %>
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
            <br />
            <table class="style1">
                <tr>
                    <td>
                        Adı:</td>
                    <td>
                       
                        <asp:TextBox ID="aditextbox" runat="server" Height="25px" Width="130px"></asp:TextBox>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        Soyadı:</td>
                    <td>
                        <asp:TextBox ID="SoyadiTextbox" runat="server" Height="25px" Width="130px" 
                            MaxLength="30"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        E-mail:</td>
                    <td>
                        <asp:TextBox ID="EmailTextbox" runat="server" Height="25px" Width="192px" 
                            MaxLength="40"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Konu:</td>
                    <td>
                        <asp:TextBox ID="KonuTextbox" runat="server" Height="25px" Width="98px" 
                            MaxLength="50"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mesaj:</td>
                    <td>
                        <asp:TextBox ID="MesajTextbox" runat="server" Height="134px" TextMode="MultiLine" 
                            Width="293px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                            onclick="Button1_Click" Text="Gönder" Width="290px" Height="25px" />
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                            DeleteMethod="Delete" InsertMethod="Insert" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                            TypeName="Bilgisayar_Satış_Sitesi.iletisimdatasetTableAdapters.İletisimTableAdapter" 
                            UpdateMethod="Update">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="aditextbox" Name="adi" PropertyName="Text" 
                                    Type="String" />
                                <asp:ControlParameter ControlID="SoyadiTextbox" Name="soyadi" 
                                    PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="EmailTextbox" Name="_e_mail" 
                                    PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="KonuTextbox" Name="konu" PropertyName="Text" 
                                    Type="String" />
                                <asp:ControlParameter ControlID="MesajTextbox" Name="mesaj" PropertyName="Text" 
                                    Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="adi" Type="String" />
                                <asp:Parameter Name="soyadi" Type="String" />
                                <asp:Parameter Name="_e_mail" Type="String" />
                                <asp:Parameter Name="konu" Type="String" />
                                <asp:Parameter Name="mesaj" Type="String" />
                                <asp:Parameter Name="Original_id" Type="Int32" />
                            </UpdateParameters>
                        </asp:ObjectDataSource>
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <strong><em><span class="style3">Mesajınız Bize Ulaşmıştır!</span></em></strong><br />
        </asp:View>
    </asp:MultiView>
    </asp:Content>
