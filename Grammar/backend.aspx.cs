using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;
using System.Text.RegularExpressions;
using Newtonsoft.Json.Linq;
using System.Collections;

namespace Grammar
{
    public partial class backend : System.Web.UI.Page
    {
        static string connect_command = @"Data Source = localhost; Initial Catalog = EnglishPlatform; Persist Security Info = True; User ID = sa; Password = 00123"; //連線代碼
        protected void Page_Load(object sender, EventArgs e)
        {

            //string data = Request.Form["data"];
            StringBuilder data = new StringBuilder(Request.Form["data"]);
            string user = Request.Form["user"];



            string re_url = "http://127.0.0.1:5000/test/" + data.ToString();
            string url = string.Format(re_url);
            using (var wc = new WebClient())
            {
                Encoding enc = Encoding.GetEncoding("UTF-8");
                Byte[] pageData = wc.DownloadData(url);
                string re = enc.GetString(pageData);
                if (re.Length > 1 && re!="-1")
                {
                    string[] Recommend = re.Split('!');
                    SqlConnection connection = new SqlConnection(connect_command);
                    connection.Open();
                    string chat = "INSERT INTO chatbot_message (ip ,text,text_keyword,dates) VALUES ('" + user + "','" + data.ToString() + "','" + Recommend[0] + "','" + DateTime.Now + "')";
                    
                    SqlCommand Command = new SqlCommand(chat, connection);
                    Command.ExecuteNonQuery();
                    connection.Close();
                    Response.Write(Recommend[1]);
                }
                else
                {
                    SqlConnection connection = new SqlConnection(connect_command);
                    connection.Open();
                    string chat = "INSERT INTO chatbot_message (ip ,text,dates) VALUES ('" + user + "','" + data.ToString() + "','" + DateTime.Now + "')";
                    SqlCommand Command = new SqlCommand(chat, connection);
                    Command.ExecuteNonQuery();
                    connection.Close();
                    Response.Write(re);
                }
            }
            data = null;
        }
    }
}