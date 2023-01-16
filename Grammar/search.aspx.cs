using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;
using System.Text.RegularExpressions;
using Newtonsoft.Json.Linq;
using System.Collections;

namespace Grammar {
    public partial class search : System.Web.UI.Page {

        static string connect_command = @"Data Source = localhost; Initial Catalog = EnglishPlatform; Persist Security Info = True; User ID = sa; Password = 00123"; //連線代碼
        protected void Page_Load(object sender, EventArgs e) {
            Response.Clear();
            // 定義送出的ContentType
            Response.ContentType = "text/plain";
            //string data = Request.Form["Keywords"];   //斷字
            string Sentence = Request.Form["Sentence"]; //句子
            string account = Request.Form["user"];
            string date = Request.Form["Date"];
            string JsonData = "";
            string tosql = "";
            ArrayList use_key = new ArrayList();
            string tmpSentence = Sentence;
            string[] newarr = Keywords_table(Sentence).Where(x => !string.IsNullOrEmpty(x)).ToArray();//處理NULL值
            foreach (string temp in newarr.OrderBy(s => s.Length).Reverse().ToArray()) {//處理句子出現哪些字眼
                if (temp != null) {
                    if (Sentence.Contains(temp) == true) {
                        use_key.Add(temp);
                        Sentence = Sentence.Replace(temp, string.Empty);
                    }
                }
                if (Sentence == "") { break; }
            }
            string[] DATA = (string[])use_key.ToArray(Type.GetType("System.String"));
            tosql = Data_search_command(DATA);  //出現的字眼轉換command 
            RkofKeywords(DATA);
            JsonData = (tosql == "empty") ? "[]" : SetDataTableToJson(tosql);    //取得關鍵字搜尋資料
            InsertUserData(account, tmpSentence, DATA, date);
            Response.Write(JsonData);
            Response.End();
        }
        protected void RkofKeywords(string[] data) {

            SqlConnection connection = new SqlConnection(connect_command);
            connection.Open();
            if (data.Length > 0) {
                string updateRK = "UPDATE dbo.Grammer2 SET times += 1 WHERE Keys = '" + data[0] + "'";
                if (data.Length > 1) {
                    foreach (string sn in data) {
                        if (sn != data.First()) {
                            updateRK += " OR Keys ='" + sn + "'";
                        }
                    }
                }
                SqlCommand Command = new SqlCommand(updateRK, connection);
                Command.ExecuteNonQuery();
            }
            connection.Close();
        }
        protected void InsertUserData(string account, string Sentence, string[] data, string date)//資料庫資料做成字串
        {
            SqlConnection connection = new SqlConnection(connect_command);
            connection.Open();
            string userdata = "INSERT INTO User_data VALUES('" + account + "', '" + Sentence + "', '" + string.Join(",", data) + "', '" + date + "')";
            SqlCommand Command = new SqlCommand(userdata, connection);
            Command.ExecuteNonQuery();
            connection.Close();

        }
        protected string Data_search_command(string[] data) {
            string tosql = "SELECT * FROM EP WHERE ";
            if (data.Length == 0) { return "empty"; }
            else {
                foreach (string word in data) {
                    if (word == data.First()) {
                        tosql += "keyword LIKE '%" + word + "%'";
                    }
                    else {
                        tosql += "AND keyword LIKE '%" + word + "%'";
                    }
                }
            }
            return tosql;
        }
        protected string[] Keywords_table(string sentence) {
            SqlConnection connection = new SqlConnection(connect_command);
            string sql_command = "";
            sql_command = sentence.Length >= 5 ? "SELECT word FROM Keywords" : "SELECT word FROM Keywords WHERE LEN(word) <= " + sentence.Length;
            SqlCommand Command = new SqlCommand(sql_command, connection);
            connection.Open();
            SqlDataReader Reader = Command.ExecuteReader();
            int i = 0;
            string[] ary = new string[500];
            //檢查是否有資料列
            if (Reader.HasRows) {
                //使用Read方法把資料讀進Reader，讓Reader一筆一筆順向指向資料列，並回傳是否成功。
                while (Reader.Read()) {
                    ary[i++] = Reader[0].ToString();
                }
            }
            connection.Close();
            return ary;
        }

        protected string SetDataTableToJson(string sqlcommand) {
            SqlConnection con = new SqlConnection(connect_command);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(sqlcommand, con);
            da.Fill(ds);
            DataTable dt = ds.Tables.Count > 0 ? ds.Tables[0] : new DataTable();
            //將DataTable轉成JSON字串
            string str_json = JsonConvert.SerializeObject(dt, Formatting.Indented);
            con.Close();
            return str_json;
        }

        /*protected string GetDataToString(string sqlcommand)//資料庫資料做成字串
            {
                SqlConnection connection = new SqlConnection(connect_command);
                //new一個SqlCommand告訴這個物件準備要執行什麼SQL指令
                SqlCommand Command = new SqlCommand(sqlcommand, connection);
                //與資料庫連接的通道開啟
                connection.Open();
                //new一個DataReader接取Execute所回傳的資料。
                SqlDataReader Reader = Command.ExecuteReader();
                string str = "";
                int i = 0;
                //檢查是否有資料列
                if (Reader.HasRows)
                {
                    //使用Read方法把資料讀進Reader，讓Reader一筆一筆順向指向資料列，並回傳是否成功。
                    while (Reader.Read())
                    {
                        str += Reader[0].ToString() + ',';
                    }
                }
                return str.Length > 0 ? str.Substring(0, str.Length - 1) : ""; // EX: "形容詞,名詞"
            }*/
    }
}