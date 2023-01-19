using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Grammar
{
    public partial class Connsql : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            


            //建立連接
            SqlConnection conn = new SqlConnection("data source=LAPTOP-J71QGUGU\\SQLEXPRESS; initial catalog =Video_data;integrated security=True");
            //打開連接
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Grammar_Table", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            try

            {
                while (dr.Read())
                {
                    Response.Write(dr[0].ToString() + "," + dr[1].ToString() + "," + dr[2].ToString() + "," + dr[3].ToString() + "<br>");
                }

            }
            finally
            {
                dr.Close();
            }
        }
    }
}