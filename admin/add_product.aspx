<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add_product.aspx.cs" Inherits="admin_add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
<h3> Add Product</h3>
<table cellpadding="100" cellspacing="100">
    <tr>
        <td>Product Name </td>
        <td><asp:TextBox ID="t1" runat="server"></asp:TextBox></td>
        
  <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="t1" errormessage="Please enter your product name!" ForeColor="Red" />
    </tr>
    <tr>
        <td>Product Description </td>
        <td><asp:TextBox ID="t2" runat="server"></asp:TextBox></td>
        
  <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="t2" errormessage="Please enter the Product Description!" ForeColor="Red" />
    </tr>
    <tr>
        <td>Product Price </td>
        <td><asp:TextBox ID="t3" runat="server"></asp:TextBox></td>
        
  <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="t3" errormessage="Please enter the product price!" ForeColor="Red" />
    </tr>
    <tr>
        <td>Product Quantity </td>
        <td><asp:TextBox ID="t4" runat="server"></asp:TextBox></td>
        
  <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="t4" errormessage="Please enter the product quantity!" ForeColor="Red" />
    </tr>
    <tr>
        <td>Product Image </td>
        <td><asp:FileUpload ID="f1" runat="server" /></td>
        
  <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" controltovalidate="f1" errormessage="Please select the image!" ForeColor="Red" />
    </tr>
    <tr>
        <td>Product category </td>
        <td><asp:TextBox ID="t5" runat="server"></asp:TextBox></td>
        
  <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" controltovalidate="t5" errormessage="Please enter the product category!" ForeColor="Red" />
    </tr>
    <tr>
        <td colspan="2" align="center"><asp:Button ID="b1" runat="server" Text="upload" 
                onclick="b1_Click"/></td>

    </tr>
</table>
</asp:Content>

