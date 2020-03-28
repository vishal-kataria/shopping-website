using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_update_order_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\katar\Downloads\ShoppingSite\App_Data\shopping.mdf;Integrated Security=True;User Instance=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (IsPostBack)
        { return; }
        
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from registration where email='"+Session["user"].ToString()+"'" ;
        cmd.ExecuteNonQuery();

        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);

        foreach (DataRow dr in dt.Rows)
        {
            TextBox1.Text = dr["firstname"].ToString();
            TextBox2.Text = dr["lastname"].ToString();
            TextBox5.Text = dr["address"].ToString();
            TextBox6.Text = dr["city"].ToString();
            TextBox7.Text = dr["state"].ToString();
            TextBox8.Text = dr["pincode"].ToString();
            TextBox9.Text = dr["mobile"].ToString();
        }

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "update registration set firstname='" + TextBox1.Text + "' ,lastname='" + TextBox2.Text + "' ,address='" + TextBox5.Text + "' ,city='" + TextBox6.Text + "' ,state='" + TextBox7.Text + "' ,pincode='" + TextBox8.Text + "' ,mobile='" + TextBox9.Text + "' where email='"+Session["user"]+"'";
        cmd.ExecuteNonQuery();
        Response.Redirect("payment_gateway.aspx");
    }
}