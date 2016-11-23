<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FullBlogPost.aspx.cs" Inherits="Assignment1W2016.FullBlogPost" %>
<%@ PreviousPageType VirtualPath="~/Default.aspx"%>
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
       <asp:Label ID="blogtitle" runat="server"></asp:Label>
       <div>
           <asp:Literal ID="Author" runat="server"></asp:Literal>
           <br />
           <asp:Literal ID="Date" runat="server"></asp:Literal>
           <br />
           
            <asp:Literal ID="BlogPost" runat="server"></asp:Literal>
           <br />
           <h2>Comment Section: </h2>
           <br />
           <asp:TextBox ID="commentBox" runat="server" Height="107px" Width="506px">Write Comment here...</asp:TextBox>
           <br />
           <asp:Button runat="server" Text="Submit" OnClick="Save_Comment"/>
           <br />
          <asp:Label runat="server" ID="not"></asp:Label>
       </div>
   </div>
    <div id="right">
        <asp:Label runat="server">Hello, </asp:Label>
    <asp:Label ID="meep" runat="server"></asp:Label>
         <br />
         <asp:Button id="logout" OnClick="LogOut" runat="server"/>
    </div>
</asp:Content>
