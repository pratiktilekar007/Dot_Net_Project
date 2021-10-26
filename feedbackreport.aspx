<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="feedbackreport.aspx.cs" Inherits="feedbackreport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



   <div id="site_content">


    <asp:ScriptManager runat="server">
    </asp:ScriptManager>



       <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1022px" 
           Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
           WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
           <LocalReport ReportPath="Report3.rdlc">
               <DataSources>
                   <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
               </DataSources>
           </LocalReport>
       </rsweb:ReportViewer>


       <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
           SelectMethod="GetData" 
           TypeName="DatabaseDataSetTableAdapters.feedbackTableAdapter">
       </asp:ObjectDataSource>


    </div>

</asp:Content>

