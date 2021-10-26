<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div id="site_content">
    
   <center>
        <!-- insert the page content here -->
   
       <h1>Feedback</h1>
       
          <div class="form_settings" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: large; text-decoration: underline; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: none; color: #800000">

            Name: 
            <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox> 
          <br /><br />

            Email Address:<asp:TextBox ID="TextBox2"  runat="server" Width="202px"></asp:TextBox>
          <br /><br />
          
              Message:<asp:TextBox ID="TextBox3" runat="server" 
                  Height="46px" Width="197px"></asp:TextBox>
                    <br />
                    <br />
               <asp:Button ID="Button1" runat="server" Text="send" 
                  Width="157px" onclick="Button1_Click" />
          </div>
      
        
   

   <br /> <br /> 
  


   </center>
   
      </div>
</asp:Content>

