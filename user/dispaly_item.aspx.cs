﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_dispaly_item : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\katar\Downloads\ShoppingSite\App_Data\shopping.mdf;Integrated Security=True;User Instance=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        if (Request.QueryString["category"] == null)
        {
            cmd.CommandText = "select * from product";
        }
        else
        {
            cmd.CommandText = "select * from product where product_category='" + Request.QueryString["category"].ToString() + "'";
        }
        if (Request.QueryString["category"] == null && Request.QueryString["search"] !=null)
        {
            cmd.CommandText = "select * from product where product_name like ('%" + Request.QueryString["search"].ToString() + "%')";
        }
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource= dt;
        d1.DataBind();
        con.Close();
    }
}