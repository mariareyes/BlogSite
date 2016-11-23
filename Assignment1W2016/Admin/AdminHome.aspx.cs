using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1W2016.Admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        Assigment1Entities dbAss1 = new Assigment1Entities();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["ID"] != null)
            {
                id = Convert.ToInt32(Session["ID"].ToString());
                userInfoM.HRef = "EditUser.aspx";
                userInfoM.InnerText = "Edit User";

            }
defaultgrid.DataSource = dbAss1.Blogs.ToList();
            defaultgrid.DataBind();
            var userInfo = (from us in dbAss1.Users where us.UserId.Equals(id) select us);
            foreach (var us in userInfo)
            {
                meep.Text = us.FirstName.ToString();

            }

            if (id == 11)
            {
              
                addblog.HRef = "./AddBlogPost.aspx";
                editblog.HRef = "./EditBlogPost.aspx";
                badwords.HRef = "./BadWords.aspx";

            }

        }
        public void Deletefile(object sender, GridViewDeleteEventArgs e)
        {
            var countedFiles = 0;
            foreach(var file in dbAss1.Blogs.ToList()){
                if (countedFiles == e.RowIndex)
                {
                   dbAss1.Blogs.Remove(file);
                   dbAss1.SaveChanges();

                    var rowind = e.RowIndex;
                    defaultgrid.DataSource = dbAss1.Blogs.ToList();
                    defaultgrid.DataBind();
                    return;

                }
                countedFiles++;

            
            }

            defaultgrid.DataSource = dbAss1.Blogs.ToList();
            defaultgrid.DataBind();
 
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