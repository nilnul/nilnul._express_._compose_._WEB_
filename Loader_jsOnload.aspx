<%@ Page Title="" Language="C#" MasterPageFile="~/_master/Loader.Master" AutoEventWireup="true" %>

<%@ Register Src="~/_loader/Refer.ascx" TagPrefix="uc1" TagName="Refer" %>

<%--<%@ OutputCache Duration="3600000" VaryByCustom="l" VaryByParam="title,url,l" %>
	title is not changed when cached.
--%>


<asp:Content ID="Content11" ContentPlaceHolderID="titleContent" runat="server">
	<%=Request.QueryString["title4weixin"]??Request.QueryString["title"]??(""+(Request.QueryString["url"]??"Nilnul")) %>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:Refer runat="server" id="Refer" />

</asp:Content>
