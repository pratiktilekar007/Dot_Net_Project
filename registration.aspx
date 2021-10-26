<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 200px;
            background-color:#FFFF99;
        }
        
         .style9
        {
            width: 300px;
            background-color:#FFFF99;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="site_content">
     
        <!-- insert the page content here -->
        <center style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: 200; font-style: italic; font-variant: normal; text-transform: none; color: #800000; text-decoration: underline">
        <br />
        <h1>Registration</h1>
       

  
                Name:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />  <br />
                Mobile:
            
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             <br />  <br />
          
                Email:
            
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
             <br />  <br />
           
                address:
      
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            
           <br />  <br />
       
                User name:
        
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            
             <br />  <br />
                Password:
          
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
              <br />  <br />
                Confirm Password:
      
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="113px"></asp:TextBox>
          
         
                <br />  <br /> 
           
   

     <asp:Button ID="Button1" runat="server" Text="Send" onclick="Button1_Click" 
                Width="83px" />
    </center>
       
   <br />
   <br />
    </div>

</asp:Content>

