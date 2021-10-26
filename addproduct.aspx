<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 510px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <div id="site_content">
      <div id="content">
        <!-- insert the page content here -->

      

      <table style="width:144%;">
        <tr>
            <td class="style7">
                Product Name</td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Price</td>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Category</td>
            <td class="style1">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Image</td>
            <td class="style1">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Quantity</td>
            <td class="style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Description</td>
            <td class="style1">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style1">

                <asp:Button ID="Button1" runat="server" Text="Add" Width="77px" onclick="Button1_Click" 
                      />


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Update" Width="77px" onclick="Button2_Click" 
                     />


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Delete" Width="77px" onclick="Button3_Click" 
                     />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>


    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        HorizontalAlign="Left" onselectedindexchanged="GridView1_SelectedIndexChanged" 
              Height="212px" Width="1034px">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
         <Columns>
            <asp:BoundField DataField="pname" HeaderText=" Name" />
            <asp:BoundField DataField="category" HeaderText="Category" />
             <asp:BoundField DataField="price" HeaderText=" Price" />
            <asp:BoundField DataField="qty" HeaderText=" Quantity" />
            <asp:BoundField DataField="description" HeaderText=" Description" />
             <asp:ImageField DataImageUrlField="photo" HeaderText="Photo"  ControlStyle-Height="100">
<ControlStyle Height="100px"></ControlStyle>
             </asp:ImageField>
           

            </Columns>
    </asp:GridView>

        </div>
        </div>
</asp:Content>

