using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace final_2017707073
{
    public partial class About : System.Web.UI.Page
    {
        OleDbConnection con1 = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/data/personel.accdb;");
        BindingSource bs1 = new BindingSource();
        OleDbDataAdapter da1;
        DataTable dt1 = new DataTable();
        OleDbConnection con2 = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/data/satis.accdb;");

        DataSet ds = new DataSet();
        double netgelir, komisyon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.DataBind();
                TextBox2.DataBind();
                TextBox3.DataBind();
                TextBox4.DataBind();
                TextBox5.DataBind();
                TextBox6.DataBind();
                TextBox7.DataBind();
                TextBox9.DataBind();
                TextBox10.DataBind();
                TextBox11.DataBind();
                TextBox12.DataBind();
            }
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox11.Enabled = false;
            TextBox12.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox5.Text != "")
            {
                OleDbCommand ekle = new OleDbCommand("Insert INTO satis (Urunkod,Urunad,Adet,Satistar,girisfiyat,satisfiyat," +
                    "netgelir,komisyon,saticitc) " +
                  "VALUES (@Urunkod,@Urunad,@Adet,@Satistar,@girisfiyat,@satisfiyat,@netgelir,@komisyon,@saticitc)", con2);
                con2.Open();
                ekle.Parameters.AddWithValue("@Urunkod", Convert.ToInt32(TextBox5.Text));
                ekle.Parameters.AddWithValue("@Urunad", TextBox6.Text);
                ekle.Parameters.AddWithValue("@Adet", Convert.ToInt32(TextBox7.Text));
                ekle.Parameters.AddWithValue("@Satistar", Calendar1.SelectedDate);
                ekle.Parameters.AddWithValue("@girisfiyat", TextBox9.Text);
                ekle.Parameters.AddWithValue("@satisfiyat", TextBox10.Text);
                ekle.Parameters.AddWithValue("@netgelir", TextBox11.Text);
                ekle.Parameters.AddWithValue("@komisyon", TextBox12.Text);
                ekle.Parameters.AddWithValue("@saticitc", Convert.ToInt32(TextBox2.Text));
                ekle.ExecuteNonQuery();
                con2.Close();
            }
        }
        void gelir()
        {
            netgelir = (Convert.ToDouble(TextBox10.Text) - Convert.ToDouble(TextBox9.Text))*Convert.ToDouble(TextBox7.Text);
            TextBox11.Text = Convert.ToString(netgelir);
            komisyon = netgelir * 0.03;
            TextBox12.Text = Convert.ToString(komisyon);
        }
        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {
            if(TextBox10.Text!="")
            {
                gelir();
            }
        }
        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {
            if (TextBox9.Text !="")
            {
                gelir();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            da1 = new OleDbDataAdapter("Select * from personel where saticitc="+ TextBox1.Text, con1);
            con1.Open();
            da1.Fill(dt1);
            da1.Fill(ds);
            bs1.DataSource = dt1;
            if (ds.Tables[0].Rows.Count>0)
            {
                TextBox2.Text = ds.Tables[0].Rows[0]["saticitc"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["Ad"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["Soyad"].ToString();
            }
            con1.Close();
        }
    }
}