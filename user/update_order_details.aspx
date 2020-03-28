<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="update_order_details.aspx.cs" Inherits="user_update_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
<table class="auto-style1" border="0" cellpadding="20" cellspacing="20">  
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
                    </td>  
               </tr>
               <tr>  
                    <td>State :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>  
                    </td>  
               </tr>  
               <tr>  
                    <td>Pincode :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>  
                    </td>  
               </tr> 
               <tr>  
                    <td>Mobile Number :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>  
                    </td>  
               </tr>
               <tr> 
                    <td colspan="2" align="center">  
                        <asp:Button ID="b1" runat="server" Text="Update and continue" ValidationGroup="Save" 
                            onclick="b1_Click"/>  
                    </td>  
               </tr>
               <tr> 
                    <td colspan="2"align="center">  
                        <asp:Label ID="l1" runat="server" Text=""></asp:Label>
                    </td>  
               </tr>
            </table>  
</asp:Content>

