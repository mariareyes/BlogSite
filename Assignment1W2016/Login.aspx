<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment1W2016.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="divi">
    <h1>Log in! </h1>
    <br />
    <asp:Label CssClass="label" runat="server">First Name: </asp:Label>
    <asp:TextBox ID="firstNameText" runat="server" Width="100px"></asp:TextBox>
    <br />
    <asp:Label CssClass="label" runat="server">Password: </asp:Label>
    <asp:TextBox ID="passwordText" runat="server" Width="100px"></asp:TextBox>
    <br />
    <asp:Button ID="submit" Text="Log me in!" onClick="SubmitInfo" runat="server"/>
    <asp:Label id="LogS" CssClass="label" runat="server"></asp:Label>
</div>
    <div id="menu">
        <a href="Register.aspx">Register here!</a>
        <br />
        <a href="Default.aspx">Main Page</a>
        <a id="edituser" ></a>
    </div>
</asp:Content>
