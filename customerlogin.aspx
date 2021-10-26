<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="customerlogin.aspx.cs" Inherits="customerlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div id="site_content">
<center>
        <!-- insert the page content here -->
   
       <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: 200; font-style: italic; font-variant: normal; text-transform: none; color: #800000; text-decoration: underline">User Login </h1>
       
          <div class="form_settings" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: 200; font-style: italic; font-variant: normal; text-transform: none; color: #800000; text-decoration: underline;">
          <br />
            Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
            <asp:TextBox ID="TextBox1" 
                    runat="server" Width="248px"></asp:TextBox>
  
         <br />  <br /> 
            Password
            <asp:TextBox ID="TextBox2" textmode="password"
                    runat="server" Width="244px"></asp:TextBox>        <br /> 
              <br />
        
           <asp:Button ID="Button1" runat="server" Text="Login"  
                  Width="196px" onclick="Button1_Click" />
        <br />
          </div>
      
        
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
        <br /> 
        
    <asp:HyperLink ID="HyperLink1" runat="server" 
        ForeColor="red" Height="40px" NavigateUrl="~/registration.aspx" Width="100%" 
        ViewStateMode="Enabled" Font-Bold="True" Font-Italic="True" Font-Size="Large">Do you have an acoount...?Register now</asp:HyperLink>
  


   </center>
</div>
</asp:Content>

