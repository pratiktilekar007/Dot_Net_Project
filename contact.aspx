<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <div id="site_content">
    
  <center>
   <h1>QUICK CONTACT</h1>
      <font size="5px" color="black" style="margin-left:00px;">OUR LOCATION<br />
      </font>
        <br />

        </center>
    <div class="pratik" >
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
   <img src="images/location.jpg" />


    <div style="margin-left:550px; margin-top:-250px;">
   
     <font size="3px" color="red" style="margin-left:50px;">Address</font><br />
       <font size="3px" color="black" style="margin-left:50px;">sonu ice-cream shop,</font><br />
     <font size="3px" color="black" style="margin-left:50px;">  plot no.34,near by</font><br /> 
     <font size="3px" color="black" style="margin-left:50px;">mudhoji college road,Phaltan</font><br />
     <font size="3px" color="black" style="margin-left:50px;">  DIST-SATARA.</font><br />
     <font size="3px" color="black" style="margin-left:50px;"> PIN CODE : 415523</font><br />
     <font size="3px" color="black" style="margin-left:50px;">Sonuicecream11@gmail.com</font><br /><br />
     <font size="3px" color="red" style="margin-left:50px;">CONTACT NO</font><br />
     <font size="3px" color="black" style="margin-left:50px;">7057658719,9922329213</font><br />
    </div>


    <br />
    <br />
    <br />
    <br />
  
     
   <center>
        <!-- insert the page content here -->
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <h1>Feedback</h1>
       
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
                  Width="157px" onclick="Button1_Click"  />
          </div>
      
        
   

   <br /> <br /> 
  


   </center>
   
  
          </div>
      
        
   

   <br /> <br /> 
  



</div>


       
        
   

    </div>
</asp:Content>

