using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1W2016
{
    public partial class EditUser : System.Web.UI.Page
    {
        Assigment1Entities dbass1 = new Assigment1Entities();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            //firstnametext.Text = ((Label)Master.FindControl("username")).Text;
            if (Session["ID"] != null)
            {
                id = Int32.Parse(Session["ID"].ToString());
                userInfoM.HRef = "EditUser.aspx";
                userInfoM.InnerText = "Edit User";

            }
            var userselected = (from user in dbass1.Users where user.FirstName.Contains(firstnametext.Text) select user);
            foreach(var us in userselected){
                firstnametext.Text = us.FirstName.ToString();
                lastNameText.Text = us.LastName.ToString();
                emailText.Text = us.Email.ToString();
                passwordText.Text = us.Pass.ToString();
                phoneText.Text = us.PhoneNumber.ToString();
                countryText.Text = us.Country.ToString();
                Calendar1.TodaysDate = us.DateBirth.Value.Date;
            }
            var userInfo = (from us in dbass1.Users where us.UserId.Equals(id) select us);
            foreach (var us in userInfo)
            {
                meep.Text = us.FirstName.ToString();

            }
            if (id == 11)
            {
                adminhome.HRef = "Admin/AdminHome.aspx";
                addblog.HRef = "Admin/AddBlogPost.aspx";
                editblog.HRef = "Admin/EditBlogPost.aspx";
                badwords.HRef = "Admin/BadWords.aspx";

            }
            
        }
        public void SubmitInfo(object sender, EventArgs e) {
            var userselected = (from user in dbass1.Users where user.FirstName.Contains(firstnametext.Text) select user);
            foreach (var us in userselected)
            {
                if (!us.FirstName.ToString().Contains(firstnametext.Text))
                {
                    us.FirstName.Replace(us.FirstName.ToString(), firstnametext.Text);
                    infochanged.Text = "Information updated!";
                }
               if(!us.LastName.ToString().Contains(lastNameText.Text)){
                    us.LastName.Replace(us.LastName.ToString(),lastNameText.Text);
                    infochanged.Text = "Information updated!";
                }
                if(!us.Email.ToString().Contains(emailText.Text)){
                   us.Email.Replace(us.Email.ToString(),emailText.Text);
                   infochanged.Text = "Information updated!";
                }
                if (!us.Pass.ToString().Contains(passwordText.Text))
                {
                    us.Pass.Replace(us.Pass.ToString(), passwordText.Text);
                    infochanged.Text = "Information updated!";
                }
                if(!us.PhoneNumber.ToString().Contains(phoneText.Text)){
                    us.PhoneNumber.Replace(us.PhoneNumber.ToString(), phoneText.Text);
                    infochanged.Text = "Information updated!";
                }
                if (!us.Country.ToString().Contains(countryText.Text))
                {
                    us.Country.Replace(us.Country.ToString(), countryText.Text);
                    infochanged.Text = "Information updated!";
                }

                if (us.DateBirth.Value.Date != Calendar1.SelectedDate.Date)
                {
                    us.Country.Replace(us.Country.ToString(), countryText.Text);
                    infochanged.Text = "Information updated!";
                }
                dbass1.SaveChanges();
            }
        }

        public void LogOut(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
              //  Session["ID"].Expires = DateTime.Now.AddMinutes(-15);
                meep.Text = "";
                Server.Transfer("~/Default.aspx");
               
            }
        }
    }
}