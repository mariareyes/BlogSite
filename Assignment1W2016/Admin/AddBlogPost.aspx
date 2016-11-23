<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMenu.Master" AutoEventWireup="true" CodeBehind="AddBlogPost.aspx.cs" Inherits="Assignment1W2016.Admin.AddBlogPost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div id="menu">
        <br />
        <br />
        <br />
        <br />
         <a id="A1" href="Login.aspx" runat="server">Login</a>
        <br />
        <br />
        <a id="userInfoM" href="Register.aspx" runat="server">Register here!</a>
        <br />
        <br />
        <a href="Default.aspx">Main Page</a>
        <br />
        <br />
        <a id="adminhome" runat="server">Home</a>
         <br />
        <br />
        <a id="addblog" runat="server">Add new Blog Post</a>
        <br />
        <br />
        <a id="editblog" runat="server">Edit Blog Post</a>
        <br />
        <br />
        <a id="badwords" runat="server">Bad Words are here!</a>
        
    </div>
    <div id="divi">
        <asp:Label ID="title" runat="server">Title: </asp:Label>
        <asp:TextBox ID="titleText" Width="100px" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" SetFocusOnError="true" ControlToValidate="titletext" ErrorMessage="Title is a required field." ForeColor="Red">
        </asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="author" runat="server">Author/First Name: </asp:Label>
        <asp:TextBox ID="authorText" Width="100px" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"  SetFocusOnError="true" ControlToValidate="authorText" ErrorMessage="Author is a required field." ForeColor="Red">
</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="shortDesc" runat="server">Short Description: </asp:Label>
        <asp:TextBox ID="shortText" Width="100px" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" display="Dynamic" SetFocusOnError="true" ControlToValidate="shortText" ErrorMessage="Short Description is a requiered field"  ForeColor="Red" >  </asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="full" runat="server">Blog body: </asp:Label>
        <asp:TextBox ID="fullText" Width="500px"   Height="300px" runat="server" TextMode="MultiLine" ></asp:TextBox>
        <br />
        <asp:Label ID="flag" runat="server">Available(Yes or No): </asp:Label>
        <asp:TextBox ID="flagText" Width="200px" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" SetFocusOnError="true" ControlToValidate="flagText" ErrorMessage="Available is a required field." ForeColor="Red">
        </asp:RequiredFieldValidator>
        <br />
        <asp:Button runat="server" ID="submit" Text="Submit" onClick="SubmitInfo"/>
    </div>
     <div id="right">
        <asp:Label runat="server">Hello, </asp:Label>
    <asp:Label ID="meep" runat="server"></asp:Label>
         
    </div>
</asp:Content>
