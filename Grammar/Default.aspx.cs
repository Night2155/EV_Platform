using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Net;

namespace Grammar {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            //Response.Write("Hello The World");
            SetCookieData();
            //GetUserIP();
            string[] Recommend = GetRecommendWord();
            recommend1.InnerHtml = Recommend[0].Split(',')[0];
            recommend1_1.InnerHtml = Recommend[0].Split(',')[1];
            recommend2.InnerHtml = Recommend[1].Split(',')[0];
            recommend2_1.InnerHtml = Recommend[1].Split(',')[1];
            recommend3.InnerHtml = Recommend[2].Split(',')[0];
            recommend3_1.InnerHtml = Recommend[2].Split(',')[1];
            recommend4.InnerHtml = Recommend[3].Split(',')[0];
            recommend4_1.InnerHtml = Recommend[3].Split(',')[1];
            recommend5.InnerHtml = Recommend[4].Split(',')[0];
            recommend5_1.InnerHtml = Recommend[4].Split(',')[1];
            recommend6.InnerHtml = Recommend[5].Split(',')[0];
            recommend6_1.InnerHtml = Recommend[5].Split(',')[1];
            recommend7.InnerHtml = Recommend[6].Split(',')[0];
            recommend7_1.InnerHtml = Recommend[6].Split(',')[1];//抱歉我偷懶XD
            eIP.InnerText = GetUserIP();
        }
        public static string[] GetRecommendWord() {

            string connect_command = @"Data Source = localhost; Initial Catalog = EnglishPlatform; Persist Security Info = True; User ID = sa; Password = 00123";
            SqlConnection connection = new SqlConnection(connect_command);
            string sql_command = "SELECT Top 7 Keys,Keys_eng FROM Grammer2 ORDER by times DESC";
            SqlCommand Command = new SqlCommand(sql_command, connection);
            connection.Open();
            SqlDataReader Reader = Command.ExecuteReader();
            int i = 0;
            string[] ary = new string[500];
            //檢查是否有資料列
            if (Reader.HasRows) {
                //使用Read方法把資料讀進Reader，讓Reader一筆一筆順向指向資料列，並回傳是否成功。
                while (Reader.Read()) {
                    ary[i++] = Reader[0].ToString() + "," + Reader[1].ToString();
                }
            }
            connection.Close();
            return ary;
        }
        private static void SetCookieData() {
            HttpCookie cookie = new HttpCookie("uid");//初始化並設置Cookie的名稱
            int userid = (new Random()).Next(100000);
            DateTime dt = DateTime.Now;
            TimeSpan ts = new TimeSpan(0, 50, 0);//過期時間為50分鐘
            cookie.Expires = dt.Add(ts);//設置過期時間           
            cookie.Values.Add("userid", userid.ToString());
            HttpContext.Current.Response.Cookies.Add(cookie);
        }
        [System.Web.Services.WebMethod()]
        [System.Web.Script.Services.ScriptMethod()]
        public static string GetUserIP() {
            string IPaddr = "";
            if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null) //用戶端IP不為空
            {
                IPaddr = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();    //取得IP
            }
            else if (HttpContext.Current.Request.UserHostAddress.Length != 0)//或者取得IP長度不為0時
            {
                IPaddr = HttpContext.Current.Request.UserHostAddress;   //直接取得IP位置
            }
            //Response.Write(IPaddr); //test original IP ::1
            string url = "https://api.ip.sb/geoip/" + IPaddr + "/ip";   //透過api.ip.sb/取得原始IP位置 (因為有些原始IP會繞過去 用代理等等) 待測試
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);//請求
            request.Method = WebRequestMethods.Http.Get;    //使用GET
            request.ContentType = "application/json";//回傳json
            request.Timeout = 5000;//愈時
            string result = "";
            /*using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)
            {
                using (StreamReader sr = new StreamReader(response.GetResponseStream()))
                {
                    result = sr.ReadToEnd();
                }
            } */    //有時候retry太快會出現連線愈時的問題
            try {
                HttpWebResponse response = request.GetResponse() as HttpWebResponse;
                StreamReader sr = new StreamReader(response.GetResponseStream());
                result = sr.ReadToEnd();    //response字串
                response.Close();
                sr.Close();
                response.Dispose();
                sr.Dispose();
            }
            catch {
                return "FAILED";        //Get失敗
            }
            //Response.Write(result);//印出ip到前端去
            return result.Replace("\n", "").Replace(" ", "");
        }
    }
}