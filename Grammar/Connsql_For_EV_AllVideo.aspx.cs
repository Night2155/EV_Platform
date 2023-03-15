using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Newtonsoft.Json;
using System.Configuration;

namespace Grammar
{
    public partial class Connsql : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            AllData();
            string datatojson = ConvertDataTableToJson(dt);//轉換成JSON格式
            Response.Write(datatojson); // 傳到前端
            dt.Clear();
            Response.End();
        }
        public void AllData()
        {
            //建立連接 
            //SqlConnection conn = new SqlConnection("data source=LAPTOP-J71QGUGU\\SQLEXPRESS; initial catalog =Video_data;integrated security=true");
            //SqlConnection conn = new SqlConnection("data source=DESKTOP-GPKL4Q4\\SQLEXPRESS; initial catalog =Video_data;integrated security=True");
            SqlConnection conn = new SqlConnection("data source=DESKTOP-GPKL4Q4\\MSSQLSERVER_2017; initial catalog =Video_data;integrated security=True");
            //SqlConnection conn =new SqlConnection(ConfigurationManager.AppSettings["MSSQL_DBconnect"]);
            //打開連接
            conn.Open();
            string sql = "SELECT Video_Title,VideoID,keywords,transcript FROM Grammar_Table union SELECT Video_Title,VideoID,keywords,transcript FROM Writing_Table union SELECT Video_Title, VideoID, keywords, transcript FROM Reading_Table";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dt.TableName = "Grammar_Table";
                dt.Columns.Add("Video_Title");
                dt.Columns.Add("VideoID");
                dt.Columns.Add("keywords");
                dt.Columns.Add("transcript");
                while (dr.Read())
                {

                    //Response.Write(dr[0].ToString() + "," + dr[1].ToString() + "," + dr[2].ToString() + "," + dr[3].ToString() + "<br>");
                    DataRow dataTable = dt.NewRow();

                    dataTable["Video_Title"] = dr[0].ToString();
                    dataTable["VideoID"] = dr[1].ToString();
                    dataTable["keywords"] = dr[2].ToString();
                    dataTable["transcript"] = dr[3].ToString();
                    dt.Rows.Add(dataTable);
                }

            }
            //dr.Close();
            conn.Close();

        }
        public string ConvertDataTableToJson(DataTable dt)
        {
            string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
            return json;
        }
    }
}