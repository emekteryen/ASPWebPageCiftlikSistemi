<%@ Page Title="SATICI GİR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="final_2017707073._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" width="%80" runat="server">

    <div class="jumbotron">
    

        <asp:Table ID="Table2" runat="server">

            <asp:TableRow>
                <asp:TableCell>  <asp:Label ID="Label2" runat="server" Text="Kimlik"></asp:Label>              </asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="TextBox2" type="number" runat="server"></asp:TextBox> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>    <asp:Label ID="Label3" runat="server" Text="Ad"></asp:Label>            </asp:TableCell>
                <asp:TableCell>   <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>     </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell>      <asp:Label ID="Label4" runat="server" Text="Soyad"></asp:Label>          </asp:TableCell>
                <asp:TableCell> <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>       </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label5" runat="server" Text="Cinsiyet"></asp:Label>              </asp:TableCell>
                <asp:TableCell ><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>      </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label6" runat="server" Text="Medenidurum"></asp:Label>       </asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>      </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label7" runat="server" Text="Uyruk"></asp:Label>            </asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>       </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label8" runat="server" Text="Ogrenim"></asp:Label>             </asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>     </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label1" runat="server" Text="Adres"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="Label9" runat="server" Text="Brutmaas"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBox3" type="number" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" /></asp:TableCell></asp:TableRow>
            </asp:Table>
        <asp:Table ID="Table4" runat="server"></asp:Table>
        <asp:TableRow>
           <asp:TableCell> <asp:GridView ID="GridView1" runat="server"></asp:GridView></asp:TableCell>
</asp:TableRow>
    </div>

</asp:Content>
