﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;

namespace Grammar
{
    public partial class Connsql_HomePage : System.Web.UI.Page
    {
        DataTable Dt = new DataTable(); // 回傳給前端的資料表
        string Sql1 = "SELECT TOP 18 Video_Title,VideoID,keywords FROM ";
        string Sql2 = " ORDER BY NEWID()";
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            DataToFront();
        }
        public void GetData()
        {
            string keyword = Request.Form["keyword"]; //抓取前端的keyword(判斷是哪一個List)
            // 跟資料庫要資料
            //建立資料庫連接
            //SqlConnection conn = new SqlConnection("data source=LAPTOP-J71QGUGU\\SQLEXPRESS; initial catalog =Video_data;integrated security=True");
            //SqlConnection conn = new SqlConnection("data source=DESKTOP-GPKL4Q4\\SQLEXPRESS; initial catalog =Video_data;integrated security=True");
            SqlConnection conn = new SqlConnection("data source=DESKTOP-GPKL4Q4\\MSSQLSERVER_2017; initial catalog =Video_data;integrated security=True");
            //SqlConnection conn = new SqlConnection("data source=DESKTOP-O23QA8S\\SQLEXPRESS; initial catalog = Video_data; integrated security=true;");
            //打開連接
            conn.Open();
            string Sql = Sql1 + keyword + Sql2;
            SqlCommand cmd = new SqlCommand(Sql, conn);//設定SQL指令
            SqlDataReader dataReader = cmd.ExecuteReader(); //執行SQL
            if (keyword.Length > 0) {
                if (dataReader.HasRows)
                { //是否有成功抓取資料
                    // 設定資料表行列
                    Dt.TableName = "Grammar_Table";
                    Dt.Columns.Add("Video_Title");
                    Dt.Columns.Add("VideoID");
                    Dt.Columns.Add("keywords");
                    while (dataReader.Read())
                    { // 讀取資料
                        DataRow dataRow = Dt.NewRow(); // 依照剛剛設定的資料表新建一筆空資料行
                        // 填入資料
                        dataRow["Video_Title"] = dataReader[0].ToString();
                        dataRow["VideoID"] = dataReader[1].ToString();
                        dataRow["keywords"] = dataReader[2].ToString();
                        Dt.Rows.Add(dataRow);
                    }
                }
            }
            
            conn.Close();
            DataToFront();
        }
        public void DataToFront()
        {
            string datatojson = ConvertDataTableToJson(Dt);
            Response.Write(datatojson);
            Dt.Clear();
            Response.End();
        }
        public string ConvertDataTableToJson(DataTable dt)
        {
            string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
            return json;
        }
    }
}