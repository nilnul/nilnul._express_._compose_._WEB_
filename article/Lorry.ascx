<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Lorry.ascx.cs" Inherits="nilnul._express_._compose_._WEB_.article.Lorry" %>
<%--<%@ OutputCache Duration="3600000" VaryByCustom="l" VaryByParam="title,url,l" %>
	title is not changed when cached.
--%>
<%-- 
	used in a page;
	would load the url stored by a query par
--%>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.script_.onLoad_" TagPrefix="cc2" %>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.enCn_" TagPrefix="cc1" %>

<div>
	<div>
		<cc1:enCn__PerModule ID="EnCn__PerModule1" runat="server">
			<asp:View ID="View1" runat="server">
				Loading Contents, please wait...<br />
				If the loading is not completed in a long time, please contact us.
			</asp:View>
			<asp:View ID="View2" runat="server">
				正在加载内容，请等待...<br />
				如果长时间没有加载完成，请联系网站维护人员
			</asp:View>
		</cc1:enCn__PerModule>

	</div>
	<cc2:script__onLoad_Dollar ID="Script__onLoad_Dollar1" runat="server" />
</div>
