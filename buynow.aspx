<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="buynow.aspx.cs" Inherits="buynow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #id{margin-left:110px;
            width:220px;
            border-radius:10px;
            border:1px solid white;
            background-color:transparent;
            
            
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="site_content">
    <center>
        <asp:Label ID="Label1" runat="server" Text="products Added to  shopping cart "></asp:Label>

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" EmptyDataText="No particularproduct Available in shopping cart">
            <Columns>
                <asp:BoundField DataField="s no" HeaderText="s no" />
                <asp:BoundField DataField="product id" HeaderText="product id" />
                <asp:BoundField DataField="product name" HeaderText="product name" />
                <asp:ImageField HeaderText="product image">
                </asp:ImageField>
                <asp:BoundField DataField="qyt" HeaderText="Qyt" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <br />
        <br />

    </center>
    </div>
</asp:Content>

