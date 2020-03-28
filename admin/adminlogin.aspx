<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="admin_adminlogin" %>

<!DOCTYPE html>
<html >
  <head>
    <title>Admin Login</title>
        <link rel="stylesheet" href="logincss/style.css">
  </head>
  <body>
<form id ="f1" runat="server">
  <header>Admin Login</header>
  <label>Username <span>*</span></label>
  <asp:TextBox ID="t1" runat="server"></asp:TextBox>
  <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="t1" errormessage="Please enter your name!" ForeColor="Red" />
    <div class="help">At least 6 character</div>
  <label>Password <span>*</span></label>
  <asp:TextBox ID="t2" runat="server" TextMode="Password"></asp:TextBox>
  <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="t2" ErrorMessage="Please enter a password" ForeColor="Red"></asp:RequiredFieldValidator>
    <br/><br/>
    <asp:Button ID="b1" runat="server" Text="Login" onclick="b1_Click" 
      BackColor="#0080FF" Width="475px" />
  <br/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <asp:Label ID ="l1" runat="server" Text=""></asp:Label>
</form>
    
    
    
    
  </body>
</html>

