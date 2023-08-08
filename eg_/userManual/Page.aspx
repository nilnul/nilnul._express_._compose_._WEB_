<%@ Page Title="" Language="C#" MasterPageFile="~/_master/FullArmed.Master" AutoEventWireup="true"   %>

<%@ Register Src="../UserManual.ascx" TagPrefix="uc1" TagName="UserManual" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:UserManual runat="server" id="UserManual" />
</asp:Content>
