<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMenu.Master" AutoEventWireup="true" CodeBehind="EditBlogPost.aspx.cs" Inherits="Assignment1W2016.Admin.EditBlogPost" %>
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
     <div id="titleHead">
         <asp:Label ID="bl" runat="server">Blog Title:</asp:Label>
       <asp:TextBox ID="blogtitle" runat="server"></asp:TextBox>
       <div>
           <br />
             <asp:Label ID="at" runat="server">Author:</asp:Label>
           <asp:TextBox ID="Author" runat="server"></asp:TextBox>
           <br />
            <asp:Label ID="bp" runat="server">Full Text:</asp:Label>
            <asp:TextBox ID="BlogPost"  runat="server"></asp:TextBox>
           <br />
           <br />
           
       </div>
   </div>
      <div id="right">
        <asp:Label runat="server">Hello, </asp:Label>
    <asp:Label ID="meep" runat="server"></asp:Label>
       
    </div>
</asp:Content>
