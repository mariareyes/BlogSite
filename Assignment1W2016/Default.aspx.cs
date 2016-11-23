using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1W2016
{
    public partial class Default : System.Web.UI.Page
    {
        Assigment1Entities dbAss1 = new Assigment1Entities();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
       

            if (Session["ID"] != null)
            {
                id = Int32.Parse(Session["ID"].ToString());
                userInfoM.HRef = "EditUser.aspx";
                userInfoM.InnerText = "Edit User";
                
            }
            defaultgrid.DataSource = dbAss1.Blogs.ToList();
            defaultgrid.DataBind();
            var userInfo = (from us in dbAss1.Users where us.UserId.Equals(id) select us);
            foreach(var us in userInfo){
                meep.Text = us.FirstName.ToString();
              
            }
            if(id == 11){
                adminhome.HRef = "Admin/AdminHome.aspx";
                addblog.HRef = "Admin/AddBlogPost.aspx";
                editblog.HRef = "Admin/EditBlogPost.aspx";
                badwords.HRef = "Admin/BadWords.aspx";
            
            }

        }
        protected void dgProcessDetails_RowUpdating(object sender, EventArgs e)
        {
            Server.Transfer("~/FullBlogPost.aspx");
        }
        public void LogOut(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                //Session["ID"].Expires = DateTime.Now.AddMinutes(-15);
                meep.Text = "";
                Server.Transfer("~/Default.aspx");
               
            }
            meep.Text = "";
        }

    }
}