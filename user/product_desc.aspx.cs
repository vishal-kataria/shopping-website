using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_product_desc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\katar\Downloads\ShoppingSite\App_Data\shopping.mdf;Integrated Security=True;User Instance=True");
    int id,qtyy;
    string name, qty, price, desc, images;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
        {
            Response.Redirect("dispaly_item.aspx");
        }
        else
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from product where id=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataBind();
            con.Close();
        }
        qtyy = get_qty(id);

        if (qtyy == 0)
        {
            l2.Visible = false;
            tt1.Visible = false;
            b1.Visible = false;
            l1.Text = "Product out of stock!";
        }
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where id=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            name = dr[1].ToString();
            desc = dr[2].ToString();
            price = dr[3].ToString();
            qty = dr[4].ToString();
            images = dr[5].ToString();
        }

        int a = Convert.ToInt32(tt1.Text);
        int b = Convert.ToInt32(qty);
        if (a > b)
        {
            l1.Text = "Please enter lower Quantity";
        }
        else
        {
            l1.Text = "";
            if (Request.Cookies["aa"] == null)
            {
                Response.Cookies["aa"].Value = name.ToString() + "," + desc.ToString() + "," + price.ToString() + "," + a.ToString() + "," + images.ToString()+","+id.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + name.ToString() + "," + desc.ToString() + "," + price.ToString() + "," + a.ToString() + "," + images.ToString() + "," + id.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }

            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "update product set product_qty=product_qty-" + tt1.Text + " where product_name='" + name.ToString() + "'";
            cmd1.ExecuteNonQuery();
            Response.Redirect("product_desc.aspx?id=" + id.ToString());
        }

    }


    public int get_qty(int id)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where id=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            qtyy = Convert.ToInt32(dr[4].ToString());
        }
        return qtyy;
    }
}