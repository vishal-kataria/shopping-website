<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="dispaly_item.aspx.cs" Inherits="user_dispaly_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
<asp:Repeater ID ="d1" runat="server">
<HeaderTemplate>
    <ul>
</HeaderTemplate>
<ItemTemplate>
          <li class="product"> 
          <a href="product_desc.aspx?id=<%#Eval("id")
           %>"><img src="../<%#Eval("product_images") %>" height=200 width=250>" alt="" /></a>
            
            <br />
            <div class="product-info">
              <h3><%#Eval("product_name") %></h3>
              <div class="product-desc">
                <h4>Avaiable qty: <%#Eval("product_qty") %>
                <%#Eval("product_desc") %></h4>
                <strong class="price">$<%#Eval("product_price") %></strong> </div>
            </div>
          </li>
</ItemTemplate>
<FooterTemplate>
    </ul>
    <br/><br/><br/>
</FooterTemplate>
</asp:Repeater>
</asp:Content>

