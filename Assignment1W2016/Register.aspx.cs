using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1W2016
{
    public partial class Register : System.Web.UI.Page
    {
        Assigment1Entities dbass1 = new Assigment1Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void SubmitInfo(object sender, EventArgs e)
        {
            var newUser = new User();
            
            newUser.FirstName = firstnametext.Text;
            newUser.LastName = lastNameText.Text;
            newUser.Country = countryText.Text;
            newUser.PhoneNumber = phoneText.Text;
            newUser.Pass = passwordText.Text;
            newUser.Email = emailText.Text;
            newUser.DateBirth = Calendar1.SelectedDate;
            dbass1.Users.Add(newUser);
            dbass1.SaveChanges();
           var sess = (from us in dbass1.Users where us.FirstName.Contains(firstnametext.Text) & us.Pass.Contains(passwordText.Text) select us );
            foreach(var meep in sess){
                Session["ID"] = meep.UserId.ToString();
               
            }
           // Label mastery = (Label)Master.FindControl("username");
           // ((Label)Master.FindControl("username")).Text = Session["FirstName"].ToString();
           // mastery.Text = firstnametext.Text;
         //   Master.PropertyOnMasterPage = firstnametext.Text;
            Server.Transfer("~/Default.aspx");

        }
        
    }
}