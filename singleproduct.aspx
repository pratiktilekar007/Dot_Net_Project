<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="singleproduct.aspx.cs" Inherits="singleproduct" %>

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
    <center>
          <br />
          <br />

          <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
              onitemcommand="DataList1_ItemCommand" RepeatColumns="1" 
              RepeatDirection="Horizontal">
              <ItemTemplate>
                  <table class="style1">
                      <tr>
                          <td>
                              Product ID<asp:Label ID="Label1" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Image ID="Image1" runat="server" Height="98px" 
                                  ImageUrl='<%# Eval("photo") %>' Width="107px" />
                          </td>
                      </tr>
                      <tr>
                          <td>
                              Price<asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              Discription<asp:Label ID="Label4" runat="server" 
                                  Text='<%# Eval("description") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              Category<asp:Label ID="Label5" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Button ID="Button1" runat="server" 
                                  CommandArgument='<%# Eval("designid")%>' CommandName="buynow" 
                                  Text="Add To Cart" />
                          </td>
                      </tr>
                  </table>
              </ItemTemplate>
          </asp:DataList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
          <br />
          <br />
      
        </div>


</asp:Content>

