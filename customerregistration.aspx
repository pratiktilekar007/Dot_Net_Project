<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="customerregistration.aspx.cs" Inherits="customerregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div id="site_content">

 <ceneter>




     <br />
     <br />




 </ceneter>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
         CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
         GridLines="Vertical" Width="1024px">
         <AlternatingRowStyle BackColor="#CCCCCC" />
         <Columns>
             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                 ReadOnly="True" SortExpression="id" />
             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
             <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                 SortExpression="mobileno" />
             <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
             <asp:BoundField DataField="address" HeaderText="address" 
                 SortExpression="address" />
             <asp:BoundField DataField="username" HeaderText="username" 
                 SortExpression="username" />
             <asp:BoundField DataField="password" HeaderText="password" 
                 SortExpression="password" />
             <asp:BoundField DataField="cpassword" HeaderText="cpassword" 
                 SortExpression="cpassword" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
     </asp:GridView>
     <br />
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT * FROM [registration]"></asp:SqlDataSource>
</div>

</asp:Content>

