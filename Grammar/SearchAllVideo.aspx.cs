using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.IO;
using System.Web.Services;
using System.Configuration;
//using Microsoft.International.Converters.TraditionalChineseToSimplifiedConverter;

namespace Grammar
{
    public partial class SearchAllVideo : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Clear();
            //Response.ContentType = "text/plain";
            //string keyword = ChineseConverter.Convert(Request.Form["keyword"], ChineseConversionDirection.SimplifiedToTraditional);
            string keyword = Request.Form["keyword"];
            //string check = Request.Form["checkforconn"];
            getData(keyword);
            string datatojson = ConvertDataTableToJson(dt);//轉換成JSON格式
            Response.Write(datatojson); // 傳到前端
            Response.End();
        }
        public void getData(string keyword)
        {
            //SqlConnection conn = new SqlConnection("data source=LAPTOP-J71QGUGU\\SQLEXPRESS; initial catalog =Video_data;integrated security=true");
            SqlConnection conn = new SqlConnection("data source=DESKTOP-GPKL4Q4\\SQLEXPRESS; initial catalog =Video_data;integrated security=True");
            conn.Open();
            //Response.Write(keyword);
            var bindingwords = "'%" + keyword + "%'";
            var query1 = "SELECT Video_Title, VideoID, keywords FROM Grammar_Table WHERE Video_Title LIKE " + bindingwords + " OR keywords LIKE " + bindingwords;
            var union = " union ";
            var query2 = "SELECT Reading_Table.Video_Title, Reading_Table.VideoID, Reading_Table.keywords FROM Reading_Table WHERE Video_Title LIKE " + bindingwords + " OR keywords LIKE " + bindingwords;
            var query3 = "SELECT Writing_Table.Video_Title, Writing_Table.VideoID, Writing_Table.keywords FROM Writing_Table WHERE video_Title LIKE " + bindingwords + " OR keywords LIKE " + bindingwords;

            //var test = "SELECT Video_Title, VideoID, keywords FROM Grammar_Table WHERE Video_Title LIKE '%文法%' OR keywords LIKE '%文法%'";


            string sql = query1 + union+query2+ union + query3;
            //SqlCommand Sqlcmd = new SqlCommand(sql, conn);
            SqlCommand Sqlcmd = new SqlCommand(sql, conn);
            SqlDataReader dr = Sqlcmd.ExecuteReader();
            if (dr.HasRows)
            {
                dt.TableName = "Grammar_Table";
                dt.Columns.Add("Video_Title");
                dt.Columns.Add("VideoID");
                dt.Columns.Add("keywords");
                while (dr.Read())
                {
                    //Response.Write(dr[0].ToString() + "," + dr[1].ToString() + "," + dr[2].ToString() + "," + dr[3].ToString() + "<br>");
                    DataRow dataTable = dt.NewRow();

                    dataTable["Video_Title"] = dr[0].ToString();
                    dataTable["VideoID"] = dr[1].ToString();
                    dataTable["keywords"] = dr[2].ToString();
                    dt.Rows.Add(dataTable);
                }

            }
            /*
                # 搜尋結果以更新放置影片資訊的欄位呈現(篩選出有關鍵字的影片)
                # if 關鍵字 == 進行式 then 影片資訊的欄位只會出現關鍵字有進行式的影片
                # keywords 網站傳來的關鍵字
                if request.method == 'POST':
                    # keyword = request.form['search_bar']
                    # searchtext 前端傳來的搜尋關鍵字
                    keyword = request.values.get('keyword')
                    print(keyword, len(keyword))
                if(len(keyword) > 0):
                    bindingwords = "'%"+keyword+"%'"  # 字串串接
                    query = '''
                    SELECT Grammar_Table.Video_Title, Grammar_Table.VideoID, Grammar_Table.keywords FROM Grammar_Table
                    WHERE Video_Title LIKE '''+bindingwords + ''' OR keywords LIKE '''+bindingwords + '''
                    union
                    SELECT Reading_Table.Video_Title, Reading_Table.VideoID, Reading_Table.keywords FROM Reading_Table
                    WHERE Video_Title LIKE '''+bindingwords + ''' OR keywords LIKE '''+bindingwords + '''
                    union
                    SELECT Writing_Table.Video_Title, Writing_Table.VideoID, Writing_Table.keywords FROM Writing_Table
                    WHERE video_Title LIKE '''+bindingwords + ''' OR keywords LIKE '''+bindingwords
                result = db.engine.execute(query).fetchall()
                result = ChangeDataToList(result) 
             
             
             
             */


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