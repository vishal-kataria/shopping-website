<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="user_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

<table  align="center" border="0" cellpadding="20" cellspacing="20">
    <tr>
        <td>Enter Email : </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
        </td>
    </tr>
    
    <tr>
        <td>Enter Password : </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="TextBox2" errormessage="Please enter your name!" ForeColor="Red" />
   
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button1" runat="server" Text="Login" style="background-color: red; color:white; padding:10px 32px; text-align:center; text-decoration:none;  font-size:16px;" onclick="Button1_Click" />
           </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
           </td>
    </tr>

</table>

</asp:Content>

