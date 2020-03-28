using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_payment_gateway : System.Web.UI.Page
{
    string[] a = new string[6] { "", "", "", "", "", "" };
    string s, t;
    int tot = 0;
    string order_no = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
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
                }
                Session["tot"] = tot.ToString();
            }
        }
        catch (Exception e1)
        {
        }
        order_no = Class1.GetRandomPassword(10).ToString();
        Session["order_no"] = order_no.ToString();
        /*
        Response.Write("<form action='https://www.sandbox.paypal.com/cgi-bin/websrc' method='post' name='buyCredits' id='buyCredits' >");
        Response.Write("<input type='hidden' name='cmd' value='_xclick'>");
        Response.Write("<input type='hidden' name='business' value='katariavishal888@gmail.com'>");
        Response.Write("<input type='hidden' name='currency_code' value='INR'>");
        Response.Write("<input type='hidden' name='upload' value='1'>");
        Response.Write("<input type='hidden' name='item_name' value='payment for purchase'>");
        Response.Write("<input type='hidden' name='item_number' value='0'>");
        //Response.Write("<input type='hidden' name='amount' value='"+Session["tot"].ToString()+"'>");
        Response.Write("<input type='hidden' name='amount' value='1'>");
        Response.Write("<input type='hidden' name='return' value='http://localhost:51614/ShoppingSite/user/payment_sucess.aspx?order="+order_no.ToString()+"'>");
        Response.Write("</form>");
        Response.Write("<script type='text/javascript'>");
        Response.Write("document.getElementById('buyCredits').submit()");
        Response.Write("</script>");
        */
        Response.Redirect("payment_success.aspx?order="+order_no.ToString());
    }
}