<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="orderreport.aspx.cs" Inherits="orderreport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div id="site_content">


 
      <asp:ScriptManager runat="server">
    </asp:ScriptManager>
    

      <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
          Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
          WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1004px">
          <LocalReport ReportPath="Report1.rdlc">
              <DataSources>
                  <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
              </DataSources>
          </LocalReport>
    </rsweb:ReportViewer>




      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
          SelectMethod="GetData" 
          TypeName="DatabaseDataSetTableAdapters.buynowTableAdapter">
      </asp:ObjectDataSource>




</div>
</asp:Content>

