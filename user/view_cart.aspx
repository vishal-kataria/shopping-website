<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="view_cart.aspx.cs" Inherits="user_view_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <asp:DataList ID="s1" runat="server">
    <HeaderTemplate>
        <table border =2>
        <tr style="background-color:silver; color:White; font-weight:bold">
               <td>Product Images</td>
               <td>Product Name</td>
               <td>Product Description</td>
               <td>Price</td>
               <td>Quantity</td>
               <td>delete</td>
        </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td><img alt="hey" src="../<%#Eval("product_images") %>" height="100" width="100"/></td>
            <td><%#Eval("product_name") %></td>
            <td><%#Eval("product_desc") %></td>   
            <td><%#Eval("product_price") %></td>
            <td><%#Eval("product_qty") %></td>
            <td><a href="delete_cart.aspx?id=<%#Eval("id") %>">delete</a></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:DataList><p align="center">
<asp:Label ID="l1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Size="Larger"></asp:Label>
        <br />
        <asp:Button ID="b1" runat="server" Text="Checkout" onclick="b1_Click" /></p>
        
</asp:Content>

