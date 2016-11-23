<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Assignment1W2016.Register" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="divi">
        <asp:Label ID="firstname" runat="server">First Name: </asp:Label>
        <asp:TextBox ID="firstnametext" Width="100px" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" SetFocusOnError="true" ControlToValidate="firstnametext" ErrorMessage="First name is a required field." ForeColor="Red">
        </asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lastName" runat="server">Last Name: </asp:Label>
        <asp:TextBox ID="lastNameText" Width="100px" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"  SetFocusOnError="true" ControlToValidate="lastNameText" ErrorMessage="Last name is a required field." ForeColor="Red">
</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="emailAddress" runat="server">Email Address: </asp:Label>
        <asp:TextBox ID="emailText" Width="100px" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" display="Dynamic" SetFocusOnError="true" ControlToValidate="emailText" ErrorMessage="Not a valid Email!" EnableClientScript="false" ForeColor="Red" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" >  </asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Password" runat="server">Password: </asp:Label>
        <asp:TextBox ID="passwordText" Width="100px" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="phoneNumber" runat="server">Phone Number: </asp:Label>
        <asp:TextBox ID="phoneText" Width="100px" runat="server"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" display="Dynamic" SetFocusOnError="true" ControlToValidate="phoneText" ErrorMessage="Invalid student number (format=111222333)" EnableClientScript="false" ForeColor="Red" ValidationExpression="\d{10}" Type="Doble">  </asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="DateofBirth" runat="server">Date of Birth: </asp:Label>
        <asp:Calendar ID="Calendar1" runat="server"/>
        <br />
        <asp:Label ID="country" runat="server">Country: </asp:Label>
        <asp:TextBox ID="countryText" Width="100px" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" SetFocusOnError="true" ControlToValidate="countryText" ErrorMessage="Country is a required field." ForeColor="Red">
        </asp:RequiredFieldValidator>
        <br />
        <asp:Button runat="server" ID="submit" Text="Submit" onClick="SubmitInfo"/>
    </div>
</asp:Content>
