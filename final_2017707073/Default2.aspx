<%@ Page Title="SATIŞ GİR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="final_2017707073.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .centere {
    text-align: center;
}

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
        <asp:TableRow><asp:TableCell CssClass="centere">
            <asp:Label ID="Label1" runat="server" Text="Satici Bilgileri"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox1" type="number" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell CssClass="centere"><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Satici getir" /></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <asp:Table ID="Table2" runat="server">
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label2" runat="server" Text="Ürünkod"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox5" type="number" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
                <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label3" runat="server" Text="Urunad"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
                <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label4" runat="server" Text="Adet"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox7" type="number" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
                <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label6" runat="server" Text="girisfiyat"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox9" type="number" AutoPostBack="true" OnTextChanged="TextBox9_TextChanged" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
                <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label7" runat="server" Text="satisfiyat"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox10" type="number" AutoPostBack="true" OnTextChanged="TextBox10_TextChanged" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
                        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label5" runat="server" Text="Satistar"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:Calendar ID="Calendar1" runat="server"></asp:Calendar></asp:TableCell>
        </asp:TableRow>
                <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label8" runat="server" Text="netgelir"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox11" AutoPostBack="true" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label9" runat="server" Text="Komisyon"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox12" AutoPostBack="true" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
        </div>

</asp:Content>
