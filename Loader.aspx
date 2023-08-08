<%@ Page Title="" Language="C#" MasterPageFile="~/_master/Loader.Master" AutoEventWireup="true"  %>
<%--<%@ OutputCache Duration="3600000" VaryByCustom="l" VaryByParam="title,url,l" %>
	title is not changed when cached.
	--%>

<%@ Register Assembly="nilnul._web_._CTR_" Namespace="nilnul._web_._CTR_.enCn_" TagPrefix="cc1" %>
<asp:Content ID="Content11" ContentPlaceHolderID="titleContent" runat="server">
	<%=Request.QueryString["title4weixin"]??Request.QueryString["title"]??(""+(Request.QueryString["url"]??"Nilnul")) %>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="dock" runat="server">
		<cc1:enCn__PerModule ID="EnCn__PerModule1" runat="server">
			<asp:View ID="View1" runat="server">Loading Contents, please wait...<br />If the loading is not completed in a long time, please contact us.</asp:View>
			<asp:View ID="View2" runat="server">正在加载内容，请等待...<br />如果长时间没有加载完成，请联系网站维护人员</asp:View>
		</cc1:enCn__PerModule>	
		
	</div>
    <%-- the script takes in the clientId; that is an old way to do the job; --%>
	<script>
		(function (dock) {
			//get the ascx url

			$dock = $(dock);

			var url = nilnul.queryString("url");
			if (typeof (url) == "undefined" || url === null || url === "") {
				$(dock).text("url？不存在的！");

				return;
			}
			$(dock).text("nilnul.express正渲染文档格式：" + url + " ...");

			$.ready(

				$(dock).load(
					url,
						<%--{},--%>

						function (response, status, xhr) {

							if (status === "error") {

								var msg = "加载出现了错误:";

								$(dock).html(msg + xhr.status + " " + xhr.statusText + "<hr/>" + response);


							}
							else {
								var article;
								if (
									$dock.contents().filter(
										function (i, e) {
											return this.nodeType === Node.ELEMENT_NODE;
										}
									).length === 1
								) {
									var $txts = $dock.contents().filter(
										function (i, e) {
											return this.nodeType === Node.TEXT_NODE
										}
									);
									if (
										$txts.length === $dock.contents().length - 1
									) {
										if (
											Array.prototype.every.call(
												$txts, function (c) {
													return nilnul.txt.nulable.be_.nulOrWhite(c.nodeValue)
												}
											)
										) {
											article = dock.firstElementChild;
										}
									}
								}
								<%--MathJax.Hub.Queue(["Typeset", MathJax.Hub, dock]);--%>
								nilnul.express.compose(
									article||dock,1
								);
  
							}
						}


					
					)
			
				
			);

		})(
			document.getElementById("<%=dock.ClientID%>")

		);


	</script>

</asp:Content>
