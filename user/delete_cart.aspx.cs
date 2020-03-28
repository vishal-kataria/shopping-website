using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_delete_cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\katar\Downloads\ShoppingSite\App_Data\shopping.mdf;Integrated Security=True;User Instance=True");
    string s, t;
    string[] a = new string[6];
    int id;
    string name, desc, qty, price, images;
    int count = 0;
    int product_id, qtyy;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["id"].ToString());

        DataTable dt = new DataTable();
        dt.Rows.Clear();

        dt.Columns.AddRange(new DataColumn[7] { new DataColumn("product_name"), new DataColumn("product_desc"), 
        new DataColumn("product_price"),new DataColumn("product_qty"),new DataColumn("product_image"),new DataColumn("id"),new DataColumn("product_id")});

        if (Request.Cookies["aa"] != null)
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
                dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), a[4].ToString(), i.ToString(),a[5].ToString());
            }
        }

        count = 0;
        foreach (DataRow dr in dt.Rows)
        {
            if (count == id)
            {
                product_id = Convert.ToInt32(dr["product_id"].ToString());
                qtyy = Convert.ToInt32(dr["product_qty"].ToString());

            }
            count += 1;
        }
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update product set product_qty = product_qty +"+qtyy+"where id="+product_id;
        cmd.ExecuteNonQuery();
        con.Close();

        dt.Rows.RemoveAt(id);

        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-100);
        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-100);
        count = 0;
        foreach (DataRow dr in dt.Rows)
        {
            name = dr["product_name"].ToString();
            desc = dr["product_desc"].ToString();
            price = dr["product_price"].ToString();
            qty = dr["product_qty"].ToString();
            images = dr["product_image"].ToString();
            product_id = Convert.ToInt32(dr["id"].ToString());
            count = count + 1;
            if (count == 1)
            {
                Response.Cookies["aa"].Value = name.ToString() + "," + desc.ToString() + "," + price.ToString() + "," + qty.ToString() + "," + images.ToString() + "," + product_id.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + name.ToString() + "," + desc.ToString() + "," + price.ToString() + "," + qty.ToString() + "," + images.ToString() + "," + product_id.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }
        }
        Response.Redirect("view_cart.aspx");
    }
}