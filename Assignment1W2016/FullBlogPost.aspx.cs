using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1W2016
{
    public partial class FullBlogPost : System.Web.UI.Page
    {
        
        Assigment1Entities dbAss1 = new Assigment1Entities();
        string nameBlog = "";
        string correctName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
                          

            char[] code = { 'c', 'o', 'd', 'e', '=' };
                string actualPageCode = Request.QueryString.ToString();
               nameBlog = actualPageCode.TrimStart(code);
                List<Blog> blogs = dbAss1.Blogs.ToList();
                string text = "";
                string authorS = "";
                string dateS = " ";
                correctName = nameBlog.Replace("+", " ");
                blogtitle.Text = correctName;

               var selected = (from blog in blogs where blog.BlogPostTitle.Contains(correctName) select blog.TextPost);
              
            foreach(var meep in selected){
                text = meep.ToString();
            }


            var author = (from blog in blogs where blog.BlogPostTitle.Contains(correctName) select blog.author);
            foreach (var meep in author)
            {
                authorS = meep.ToString();
            }  

             var dateObject= (from blog in blogs where blog.BlogPostTitle.Contains(correctName) select blog.DateCreated);
            foreach (var meep in dateObject)
            {
                dateS = meep.ToString();
            }  
              BlogPost.Text = text;
              Author.Text = authorS;
              Date.Text = dateS;
               

           
        }
        public void Save_Comment(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                Comment comment = new Comment();

                comment.Comment_text = commentBox.Text;
                comment.date_Comment = System.DateTime.Today;
                comment.User_firstname = Session["username"].ToString();
            }
            else {
                not.Text = "PLEASE LOG IN IN ORDER TO COMMENT";
            }
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