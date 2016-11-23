<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMenu.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Assignment1W2016.Admin.AdminHome" %>
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
     <div id="divytoleft">
         <br />
        <br />
        <br />
        <br />
         <br />
        <br />
        <br />
        <br />
         <br />
        <br />
        <br />
        <br />
         <br />
         <br />
        <br />
        <br />
        <br />
    <asp:GridView ID="defaultgrid" AutoGenerateColumns="false" runat="server" Height="300px" Width="500px" AllowPaging="true" OnRowDeleting="Deletefile" EnableViewState="true">
        <Columns>
	<asp:BoundField DataField="BlogPostTitle" HeaderText="Title" htmlEncode="false" DataFormatString="<a href='FullBlogPost.aspx?code={0}'>{0}</a>"  />
     <%--<asp:ButtonField buttontype="Button" HeaderText="Title" PostBackURL="~/FullBlogPost.aspx" runat="server"/>--%>
	<asp:BoundField  DataField="TextPost" HeaderText="Short Description"/>
     <asp:BoundField  DataField="DateCreated" HeaderText="Date" DataFormatString="{0:d}" />
           <%--<asp:BoundField HeaderText="Edit" DataFormatString="<a href='Admin/EditBlogPost.aspx?code{0}'>{0}</a>"/>--%>
<asp:TemplateField AccessibleHeaderText="Edit">

        <ItemTemplate>
            <asp:Button runat="server" ID="button2" HeaderText="Edit" PostBackUrl="~/Admin/EditBlogPost.aspx" Text="Edit"/>
        </ItemTemplate>
      </asp:TemplateField>
   
        <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" ButtonType="Button" />   
            
  </Columns>
    </asp:GridView>
   </div>
     <div id="right">
        <asp:Label runat="server">Hello, </asp:Label>
    <asp:Label ID="meep" runat="server"></asp:Label>
         <br />
         <asp:Button id="logout" OnClick="LogOut" Text="Logout" runat="server"/>
    </div>
</asp:Content>
