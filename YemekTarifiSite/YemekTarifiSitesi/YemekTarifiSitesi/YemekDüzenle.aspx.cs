using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDüzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * from tbl_yemekler where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox1.Text = oku[1].ToString();
                TextBox2.Text = oku[2].ToString();
                TextBox3.Text = oku[3].ToString();
            }
            bgl.baglanti().Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // tüm yemeklerin durumunu false yaptık
        SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        //günün yemeği için id ye göre durumu true yapalım
        SqlCommand komut2 = new SqlCommand("uptade tbl_yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}