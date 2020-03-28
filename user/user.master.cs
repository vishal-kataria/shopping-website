using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_user : System.Web.UI.MasterPage
{
    string[] a = new string[6] { "", "", "", "", "", "" };
    string s, t;
    int tot = 0;
    int totcount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\katar\Downloads\ShoppingSite\App_Data\shopping.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select * from product_category";
        cmd.ExecuteNonQuery();
        con.Close();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        dd.DataSource = dt;
        dd.DataBind();
        con.Close();
        try
        {
            if (Request.Cookies["aa"].Value != null)
            {
                s = Convert.ToString(Request.Cookies["aa"].Value);
                String[] strarr = s.Split('|');
                for (int i = 0; i < strarr.Length; i++)
                {
                    t = Convert.ToString(strarr[i].ToString());
                    string[] strarr1 = t.Split(',');
                    for (int j = 0; j < strarr1.Length; j++)
                    {
                        a[j] = strarr1[j].ToString();
                    }
                    tot = tot + (Convert.ToInt16(a[2]) * Convert.ToInt16(a[3]));
                    totcount +=1;
                }

            }
            
        }
        catch (Exception e1)
        {
            
        }
        carttotitem.Text = totcount.ToString();
        carttotprice.Text = tot.ToString();


    }
}
