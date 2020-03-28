<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="product_desc.aspx.cs" Inherits="user_product_desc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

<asp:Repeater ID ="d1" runat="server">
<HeaderTemplate>
    
</HeaderTemplate>
<ItemTemplate>
<div style="height:300px; width:700px; border-style:solid; border-width:1px; ">
    <div style="height:300px; width:200px; float:left; border-style:solid; border-width:1px;">
        <img src="../<%#Eval("product_images") %>" height="300" width="200" />
    </div>
    <div style="height:300px; width:495px; float:left; border-style:solid; border-width:1px;"><br/>
        <center><h1>Item name = <%#Eval("product_name") %></center><br/></h1><br/><br/><br/><br/><br/>
        <center><h3><i>Product Description = <%#Eval("product_desc") %></i></center><br/></h3><br/><br/>
        <center><h1><i>Product Price = $<%#Eval("product_price") %>only.</center></h1></i><br/><br/><br/><br/>
    </div>
</div>
</ItemTemplate>
<FooterTemplate>

</FooterTemplate>
</asp:Repeater>
<br />
<table>
    <tr>
        <td> <asp:Label ID="l2" runat="server" Text= "Enter Quantity"></asp:Label> </td>
        <td><asp:TextBox ID ="tt1" runat="server" ></asp:TextBox></td>
        <td> <asp:Button ID ="b1" runat="server" Text="Add to cart" onclick="b1_Click"/> </td>
    </tr>
    <tr>
        <td colspan=3>
            <asp:Label ID="l1" runat="server" ForeColor="Red" Text=""></asp:Label>
        </td>
    </tr>
</table>


</asp:Content>

