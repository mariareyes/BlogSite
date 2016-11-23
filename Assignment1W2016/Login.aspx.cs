using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1W2016
{
    public partial class Login : System.Web.UI.Page
    {
        Assigment1Entities dbass1 = new Assigment1Entities();
        bool correctuser = false;
        int id = 0;
        string LastName = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["ID"] != null)
            {
                id = Int32.Parse(Session["ID"].ToString());
               

            }
        }
        public void SubmitInfo(object sender, EventArgs e)
        {
            var possibleUsers = (from us in dbass1.Users where us.FirstName.Contains(firstNameText.Text) select us).ToList();
            foreach(var user in possibleUsers){
               if(user.Pass.Contains(passwordText.Text)){
                   correctuser=true;
                   LastName = user.LastName.ToString();
                   id = user.UserId;
               
               }
            }
            if (correctuser)
            {
               // ((Label)Master.FindControl("username")).Text = firstNameText.Text;
                Session["ID"] = id;
                //Session["ID"].Expires = DateTime.Now.AddMinutes(7);
                LogS.Text = "Now you are logged in. Choose a Link to start surfing.";
                
            }
            else {

                LogS.Text = "Username or Password Not Valid.";
            
            }
        }
    }
}