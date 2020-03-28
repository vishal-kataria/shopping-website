using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_view_cart : System.Web.UI.Page
{
    string[] a = new string[6]{"","","","","",""};
    string s, t;
    int tot = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[7] { new DataColumn("product_name"), new DataColumn("product_desc"),
            new DataColumn("product_price"), new DataColumn("product_qty"), new DataColumn("product_images"),new DataColumn("id"),new DataColumn("product_id")});

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
                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), a[4].ToString(),i.ToString(),a[5].ToString());
                    tot = tot + (Convert.ToInt16(a[2]) * Convert.ToInt16(a[3]));
                }

            }
            l1.Text = "<br/><br/><br/>Grand Total is " + tot + "$"; 
        }
        catch(Exception e1)
        {
            l1.Text = "Your Cart is Empty!!";
        }
        s1.DataSource = dt;
        s1.DataBind();
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        Session["checkoutbutton"] = "yes";
        Response.Redirect("checkout.aspx");
    }
}