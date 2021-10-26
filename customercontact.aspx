<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="customercontact.aspx.cs" Inherits="Customercontact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div id="site_content">
 <center>




     <br />
     <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
         CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
         Width="973px">
         <Columns>
             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                 ReadOnly="True" SortExpression="id" />
             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
             <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
             <asp:BoundField DataField="massage" HeaderText="message" 
                 SortExpression="message" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
         <RowStyle BackColor="White" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
     </asp:GridView>



     <br />

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>


 </center>
</div>

</asp:Content>

