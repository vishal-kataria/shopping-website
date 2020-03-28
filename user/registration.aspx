<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="user_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
<table align="center" border="0" cellpadding="20" cellspacing="20">  
                <tr>  
                    <td>First-Name :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter First Name" ForeColor="Red" ID="req1" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                    </td>  
               </tr>
               <tr>  
                    <td>Last-Name :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter Last Name" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                    </td>  
               </tr>
               <tr>  
                    <td>Email :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Enter Email" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>

                    </td>  
               </tr>
               <tr>  
                    <td>Password :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                    </td>  
               </tr>
               <tr>  
                    <td>Address :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Enter Address" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                    </td>  
               </tr>
               <tr>  
                    <td>City :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Enter city" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                    
                    </td>  
               </tr>
               <tr>  
                    <td>State :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Enter state" ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                    
                    </td>  
               </tr>  
               <tr>  
                    <td>Pincode :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="Enter pincode" ForeColor="Red" ID="RequiredFieldValidator7" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                    
                    </td>  
               </tr> 
               <tr>  
                    <td>Mobile Number :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="Enter mobile number" ForeColor="Red" ID="RequiredFieldValidator8" runat="server" ValidationGroup="Save"></asp:RequiredFieldValidator>
                    
                    </td>  
               </tr>
               <tr> 
                    <td colspan="2" align="center">  
                        <asp:Button ID="b1" runat="server" Text="Register" style="background-color: #4CAF50; border-radius:8px; color:white; padding:10px 22px; text-align:center; text-decoration:none;  font-size:16px;" ValidationGroup="Save" onclick="b1_Click"/>  
                    </td>  
               </tr>
               <tr> 
                    <td colspan="2"align="center">  
                        <asp:Label ID="l1" runat="server" Text=""></asp:Label>
                    </td>  
               </tr>
            </table>  


            
 <!-- ./container -->
</asp:Content>

