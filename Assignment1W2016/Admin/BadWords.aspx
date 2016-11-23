<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMenu.Master" AutoEventWireup="true" CodeBehind="BadWords.aspx.cs" Inherits="Assignment1W2016.Admin.BadWords" %>
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
        <h2>Bad Words: </h2>
       <asp:GridView ID="defaultgrid" AutoGenerateColumns="false" runat="server" Height="300px" Width="500px" AllowPaging="true" EnableViewState="true">
        <Columns>
	<asp:BoundField DataField="BadWord1" />
     
  </Columns>
    </asp:GridView>
        </div>
    <asp:Label id="badWord" runat="server"></asp:Label>
    <asp:TextBox ID="badWordText" Width="100px" runat="server"></asp:TextBox>
    <asp:Button runat="server" ID="submit" Text="Submit" onClick="SubmitInfo"/>
    <div id="right">
        <asp:Label runat="server">Hello, </asp:Label>
    <asp:Label ID="meep" runat="server"></asp:Label>
         <br />
         <asp:Button id="logout" OnClick="LogOut" Text="Logout" runat="server"/>
    </div>
</asp:Content>
