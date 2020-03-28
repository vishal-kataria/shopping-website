using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_login : System.Web.UI.Page
{
    int tot=0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\katar\Downloads\ShoppingSite\App_Data\shopping.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from registration where email='" + TextBox1.Text + "' and password='" + TextBox2.Text+ "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        tot = Convert.ToInt32(dt.Rows.Count.ToString());
        if (tot > 0)
        {
            Session["user"] = TextBox1.Text;
            if (Session["checkoutbutton"] == "yes")
            {
                Response.Redirect("update_order_details.aspx");
            }
            else
            {
                Response.Redirect("display_order.aspx");
            }
            
        }
        else
        {
            Label1.Text = "Invalid username/password";
        }
        con.Close();
    }
}