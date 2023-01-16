using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;
using System.Text.RegularExpressions;
using Newtonsoft.Json.Linq;
using System.Collections;

namespace Grammar
{
    public partial class another_search : System.Web.UI.Page
    {

        static string connect_command = @"Data Source = localhost; Initial Catalog = EnglishPlatform; Persist Security Info = True; User ID = sa; Password = 00123"; //連線代碼
       
        protected void Page_Load(object sender, EventArgs e)
        {

            string data = Request.QueryString["data"];
            
            string JsonData = "";
            string tosql = "";
            int a;
            tosql = Data_search_command(data);
            a = GetDataToString(tosql);    //取得關鍵字搜尋資料

            a = change_data(a, data);
            string strrrr = "";
            for (int i = 0; i < a; i++)
            {
                strrrr = strrrr + datas_2[i].title + "\\" + datas_2[i].link + datas_2[i].keyword + ";";
            }
            Response.Write(strrrr);
            Response.End();
        }
        public struct data
        {
            public string title;
            public string link;
            public string keyword;
        }
        public data[] datas = new data[50];
        public data[] datas_2 = new data[50];
        public int change_data(int temp, string data)
        {

            string[,] str = new string[100, 100];
            string[] strr = new string[100];
            int a;
            for (int i = 0; i < temp; i++)
            {
                strr = datas[i].keyword.Split(',');
                a = 0;
                foreach (var item in strr)
                {
                    str[i, a] = item;
                    a++;
                }
            }
            a = 0;
            for (int j = 0; j < 5; j++)
            {
                for (int i = 0; i < temp; i++)
                {
                    if (data == str[i, j])
                    {
                        datas_2[a++] = datas[i];
                    }
                }
            }
            return a;
        }
        protected string Data_search_command(string data)
        {
            string tosql = "SELECT * FROM EP WHERE ";
            tosql += "keyword LIKE '%" + data + "%'";
            return tosql;
        }


        public int GetDataToString(string sqlcommand)//資料庫資料做成字串
        {
            SqlConnection connection = new SqlConnection(connect_command);
            //new一個SqlCommand告訴這個物件準備要執行什麼SQL指令
            SqlCommand Command = new SqlCommand(sqlcommand, connection);
            //與資料庫連接的通道開啟
            connection.Open();
            //new一個DataReader接取Execute所回傳的資料。
            SqlDataReader Reader = Command.ExecuteReader();
            int i = 0;
            //檢查是否有資料列
            if (Reader.HasRows)
            {
                //使用Read方法把資料讀進Reader，讓Reader一筆一筆順向指向資料列，並回傳是否成功。
                while (Reader.Read())
                {
                    datas[i].title = Reader[1].ToString();
                    datas[i].link = Reader[2].ToString();
                    datas[i].keyword = Reader[3].ToString();
                    i++;
                    if (i > 49)
                    {
                        break;
                    }
                }
            }
            return i; // EX: "形容詞,名詞"
        }

    }
}