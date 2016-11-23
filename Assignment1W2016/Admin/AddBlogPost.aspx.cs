using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1W2016.Admin
{ 
    public partial class AddBlogPost : System.Web.UI.Page
    {
 Assigment1Entities dbass1 = new Assigment1Entities();
 int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                id = Int32.Parse(Session["ID"].ToString());
                userInfoM.HRef = "EditUser.aspx";
                userInfoM.InnerText = "Edit User";

            }
            var userInfo = (from us in dbass1.Users where us.UserId.Equals(id) select us);
            foreach (var us in userInfo)
            {
                meep.Text = us.FirstName.ToString();

            }
            adminhome.HRef = "./AdminHome.aspx";
           
            editblog.HRef = "./EditBlogPost.aspx";
            badwords.HRef = "./BadWords.aspx";

        }
        protected void SubmitInfo(object sender, EventArgs e)
        {
            var Blog = new Blog();
            Blog.BlogPostTitle = titleText.Text;
            Blog.author = authorText.Text;
            Blog.TextPost = fullText.Text;
        
        }
        public void LogOut(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
               // Session["ID"].Expires = DateTime.Now.AddMinutes(-15);
                meep.Text = "";
                Server.Transfer("~/Default.aspx");
                
            }
        }
        
    }
}