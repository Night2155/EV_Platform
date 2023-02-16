using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AIMLbot;

namespace Grammar
{
    public partial class Bot_AIML : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string message = Request.Form["user_Text"];
            const string UserID = "user";
            Bot AimlBot = new Bot();
            User MyUser = new User(UserID, AimlBot);

            // 初始化從AIML資料夾取出AIML檔案
            //AimlBot.loadSettings(@"D:\大專生new\Grammar\Grammar\bin\config\Settings.xml");
            string test = System.AppDomain.CurrentDomain.SetupInformation.ApplicationBase + @"bin\config\Settings.xml";
            test = test.Replace("\\", @"\");
            AimlBot.loadSettings(test);

            AimlBot.isAcceptingUserInput = false;
            AimlBot.loadAIMLFromFiles();
            AimlBot.isAcceptingUserInput = true;

            // 繁體化設置正則表達式
            AimlBot.GlobalSettings.addSetting("stripperregex", "[^\u2E80-\u9FFF|a-zA-Z0-9]");

            Request request = new Request(message, MyUser, AimlBot);
            Result res = AimlBot.Chat(request);
            var output = res.Output;

            if (!string.IsNullOrEmpty(output))
                Response.Write(output); // Console.WriteLine("bot: " + output);
            else Response.Write(message); // Console.WriteLine("bot: " + message);

            Response.End();
        }
    }
}