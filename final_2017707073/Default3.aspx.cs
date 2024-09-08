using System;
using System.Collections;
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
    public partial class Contact : System.Web.UI.Page
    {

        OleDbConnection con1 = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/data/satis.accdb;");
        BindingSource bs1 = new BindingSource();
        OleDbDataAdapter da1;
        DataTable dt1 = new DataTable();
        DataSet ds = new DataSet();
        double komisyond;
        int i;
        OleDbConnection con2 = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/data/personel.accdb;");
        BindingSource bs2 = new BindingSource();
        OleDbDataAdapter da2;
        DataTable dt2 = new DataTable();
        DataSet ds2 = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void listele()
        {
            da1 = new OleDbDataAdapter("Select * from satis where saticitc=" + TextBox1.Text +
                " AND Satistar BETWEEN ? AND ?", con1);
            da1.SelectCommand.Parameters.AddWithValue("@StartDate", Calendar1.SelectedDate);
            da1.SelectCommand.Parameters.AddWithValue("@EndDate", Calendar2.SelectedDate);

            con1.Open();
            da1.Fill(dt1);
            da1.Fill(ds);
            bs1.DataSource = dt1;
            GridView1.DataSource = dt1;
            GridView1.DataBind();
            con1.Close();
           /* for(i = 0; i <= ds.Tables[0].Rows.Count;i++)
            {
                komisyond = komisyond + Convert.ToDouble(ds.Tables[0].Rows[0]["komisyon"].ToString());
            }*/
            while (i < ds.Tables[0].Rows.Count) {

                    komisyond = komisyond + Convert.ToDouble(ds.Tables[0].Rows[i]["komisyon"].ToString());
                    Label4.Text = Convert.ToString(komisyond);
                i++;
            }
            Label4.Text = Convert.ToString(komisyond);
            da2 = new OleDbDataAdapter("Select * from personel where saticitc=" + TextBox1.Text, con2);
            con2.Open();
            da2.Fill(ds2);
            if (ds2.Tables[0].Rows.Count > 0)
            {
                Label5.Text = ds2.Tables[0].Rows[0]["saticitc"].ToString() +" "+ ds2.Tables[0].Rows[0]["Ad"].ToString()
                    +" "+ ds2.Tables[0].Rows[0]["Soyad"].ToString();
            }
            con1.Close();
            con2.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            listele();

        }
    }
}