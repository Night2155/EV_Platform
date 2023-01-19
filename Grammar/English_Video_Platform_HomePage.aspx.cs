﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //連接資料庫需引用

namespace Grammar
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("data source=DESKTOP-O23QA8S/SQLEXPRESS; initial catalog = Vidoe_data;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Grammar_Table", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            try
            {
                while (dr.Read())
                {
                    Response.Write(dr[0].ToString() + "," + dr[1].ToString() + "," + dr[2].ToString() + "," + dr[3].ToString() + "<br>");
                    System.Diagnostics.Debug.WriteLine("This will be displayed in output window");
                }
            }
            finally
            {
                System.Diagnostics.Debug.WriteLine("This will be displayed in output window");
                dr.Close();
            }
        }
    }
}