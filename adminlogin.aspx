<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="site_content">
    
   <center>
        <!-- insert the page content here -->
   
       <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: 200; font-style: italic; font-variant: normal; text-transform: none; color: #800000; text-decoration: underline">Admin Login</h1>
       
          <div class="form_settings" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: 200; font-style: italic; font-variant: normal; text-transform: none; color: #800000; text-decoration: underline;">
          <br />
            Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="TextBox1" 
                    runat="server" Width="244px"></asp:TextBox> 
         <br />  <br /> 
            Password
            <asp:TextBox ID="TextBox2" textmode="password"
                    runat="server" Width="248px"></asp:TextBox>
          <br /> 
              <br />
           <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                  Width="196px" />
        <br />
          </div>
      
        
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
        <br /> 
  


   </center>
   
      </div>
</asp:Content>

