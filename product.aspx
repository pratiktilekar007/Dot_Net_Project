<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <div id="site_content">
    
       

          <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
              RepeatColumns="3" RepeatDirection="Horizontal" Height="448px" 
              Width="1021px" onitemcommand="DataList1_ItemCommand">

              <ItemTemplate>

                  <table border="0" class="style1">
                      <tr>
                          <td>
                          product ID
                              <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                                  Text='<%# Eval("pid") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                          prod name
                              <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                                  Text='<%# Eval("pname") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                          RS:
                              <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                                  Text='<%# Eval("price") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photo") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Button ID="Button1" runat="server" Text="view details" 
                                  CommandName="view details" CommandArgument='<% #Eval("pid") %>' 
                                  Height="35px"/>
                          </td>
                      </tr>
                     
                  </table>
             
              </ItemTemplate>

          </asp:DataList>

         
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>







    
        </div>
</asp:Content>

