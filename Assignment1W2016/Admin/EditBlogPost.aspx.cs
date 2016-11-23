using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1W2016.Admin
{
    public partial class EditBlogPost : System.Web.UI.Page
    {
    Assigment1Entities dbAss1 = new Assigment1Entities();
        int id = 0;
        string nameBlog = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                id = Int32.Parse(Session["ID"].ToString());
                userInfoM.HRef = "EditUser.aspx";
                userInfoM.InnerText = "Edit User";

            }
           
            var userInfo = (from us in dbAss1.Users where us.UserId.Equals(id) select us);
            foreach (var us in userInfo)
            {
                meep.Text = us.FirstName.ToString();

            }
            if (id == 11)
            {
                adminhome.HRef = "./AdminHome.aspx";
                addblog.HRef = "./AddBlogPost.aspx";
                badwords.HRef = "./BadWords.aspx";

            }
            char[] code = { 'c', 'o', 'd', 'e', '=' };
            string actualPageCode = Request.QueryString.ToString();
            nameBlog = actualPageCode.TrimStart(code);
            List<Blog> blogs = dbAss1.Blogs.ToList();
            string text = "";
            string authorS = "";
       
            blogtitle.Text = nameBlog;
            
            var selected = (from blog in blogs where blog.BlogPostTitle.Contains(nameBlog) select blog.TextPost);

            foreach (var meep in selected)
            {
                text = meep.ToString();
            }


            var author = (from blog in blogs where blog.BlogPostTitle.Contains(nameBlog) select blog.author);
            foreach (var meep in author)
            {
                authorS = meep.ToString();
            }
           
            BlogPost.Text = text;
            Author.Text = authorS;
               
        }

    }
}