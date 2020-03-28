<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="view_full_order.aspx.cs" Inherits="user_view_full_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

<asp:Repeater ID="Repeater1"  runat="server">
    <HeaderTemplate>
        <table style="border: 1px solid black;  width: 100%;">
        <tr style="background-color:Gray; color:White; border: 1px solid black;" >
            <td>id</td>
            <td>Firstname</td>
            <td>lastname</td>
            <td>email</td>
            <td>address</td>
            <td>city</td>
            <td>state</td>
            <td>pincode</td>
            <td>mobile</td>
        </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr style="border: 1px solid black;">
            <td><%#Eval("id") %></td>
            <td><%#Eval("firstname") %></td>
            <td><%#Eval("lastname") %></td>
            <td><%#Eval("email") %></td>
            <td><%#Eval("address") %></td>
            <td><%#Eval("city") %></td>
            <td><%#Eval("state") %></td>
            <td><%#Eval("pincode") %></td>
            <td><%#Eval("mobile") %></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<br/><br/><br/><br/><br/><br/>

<asp:Repeater ID="r1"  runat="server">
    <HeaderTemplate>
        <table>
        <tr style="background-color:Gray; color:White; border: 1px solid black;" >
            <td>Images</td>
            <td>product name</td>
            <td>product price</td>
            <td>Quantity</td>
        </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr style="border: 1px solid black;">
            <td><img src="../<%#Eval("product_images") %>" height="100" width="100"></td>
            <td><%#Eval("product_name") %></td>
            <td><%#Eval("product_price") %></td>
            <td><%#Eval("product_qty") %></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
</asp:Repeater>
<asp:Label ID="l1" Text="" runat="server"></asp:Label>
</asp:Content>

