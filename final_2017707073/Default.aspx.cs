using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Xml;
using System.Xml.Linq;

namespace final_2017707073
{
    public partial class _Default : Page
    {
        OleDbConnection con1 = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/data/personel.accdb;");
        BindingSource bs1 = new BindingSource();
        OleDbDataAdapter da1;
        DataTable dt1 = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listele();
                TextBox1.DataBind();
                TextBox2.DataBind();
                TextBox3.DataBind();
                TextBox4.DataBind();
                TextBox5.DataBind();
                TextBox6.DataBind();
                TextBox7.DataBind();
                TextBox9.DataBind();
            }
        }

        void listele()
        {
            da1 = new OleDbDataAdapter("Select * from personel", con1);
            con1.Open();
            da1.Fill(dt1);
            bs1.DataSource = dt1;
            GridView1.DataSource = dt1;
            con1.Close();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {

            if (TextBox2.Text != "")
            {
                OleDbCommand ekle = new OleDbCommand("Insert INTO personel (saticitc,Ad,Soyad,Cinsiyet,Medenidurum,Uyruk,Ogrenim,Adres,Brutmaas) " +
                "VALUES (@saticitc,@Ad,@Soyad,@Cinsiyet,@Medenidurum,@Uyruk,@Ogrenim,@Adres,@Brutmaas)", con1);
                con1.Open();
                ekle.Parameters.AddWithValue("@saticitc", Convert.ToInt32(TextBox2.Text));
                ekle.Parameters.AddWithValue("@Ad", TextBox9.Text);
                ekle.Parameters.AddWithValue("@Soyad", TextBox8.Text);
                ekle.Parameters.AddWithValue("@Cinsiyet", TextBox7.Text);
                ekle.Parameters.AddWithValue("@Medenidurum", TextBox6.Text);
                ekle.Parameters.AddWithValue("@Uyruk", TextBox5.Text);
                ekle.Parameters.AddWithValue("@Ogrenim", TextBox4.Text);
                ekle.Parameters.AddWithValue("@Adres", TextBox1.Text);
                ekle.Parameters.AddWithValue("@Brutmaas", Convert.ToInt32(TextBox3.Text));
                ekle.ExecuteNonQuery();
                con1.Close();
            }
        }
    }
}