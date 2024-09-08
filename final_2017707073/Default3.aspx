<%@ Page Title="SATIŞ RAPOR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="final_2017707073.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
                    #tableContainer {
        position: relative;
    }

    #Table2 {
        position: absolute;
        bottom: 0;
    }

    </style>
    
    <div id="tableContainer">
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label1" runat="server" Text="Saticitc"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell><asp:Calendar ID="Calendar1" runat="server"></asp:Calendar></asp:TableCell>
                <asp:TableCell><asp:Calendar ID="Calendar2" runat="server"></asp:Calendar></asp:TableCell>
                </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Button ID="Button1" runat="server" AutoPostBack="true" Text="Bul" OnClick="Button1_Click" /></asp:TableCell>
            </asp:TableRow>
     </asp:Table>
    <asp:Table ID="Table2" runat="server">
        <asp:TableRow><asp:TableCell>
            <asp:Label ID="Label2" runat="server" Text="Satıcı bilgileri:"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:Label ID="Label5" runat="server" Text=""></asp:Label></asp:TableCell></asp:TableRow>
        <asp:TableRow>
        <asp:TableCell><asp:GridView ID="GridView1" runat="server"></asp:GridView> </asp:TableCell>
               </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label ID="Label3" runat="server" Text="Kazanılan Toplam Komisyon: "></asp:Label></asp:TableCell>
                <asp:TableCell><asp:Label ID="Label4" runat="server" Text=""></asp:Label></asp:TableCell>
            </asp:TableRow>
    </asp:Table>
        </div>
</asp:Content>
