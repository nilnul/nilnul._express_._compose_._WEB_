<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul._express_._compose_._WEB_.article._lorry.Js" %>

<%-- 
	when the url is assigned, this js is triggered: it will load the url into an inner panel; 
--%>
<%if (false)
	{ %>
<script>
		<%}%>
	var <%=unique_func_name %>=function (child) {
		var boxer = child.parentElement
			, $boxer = $(boxer)
			, children = boxer.children
			,
			i = 0
			,
			dock = children[i++],

			$dock = $(dock);

		var url = nilnul.queryString("url");
		if (typeof (url) == "undefined" || url === null || url === "") {
			$(dock).text("url？不存在的！" + "<%=nilnul.web.http.svr.app.module_.ling_.enCn_.BySessionX.GetEnCn("You didnot provide!","你没提供！")%>");

			return;
		}

		$(dock).text("nilnul.express <%=nilnul.web.http.svr.app.module_.ling_.enCn_.BySessionX.GetEnCn("is rendering:","正渲染文档格式：")%> " + url + " ...");

		var url_set = function (url) {
			$dock.load(
				url
				,
				function (response, status, xhr) {
					if (status === "error") {
						var msg = "<%=nilnul.web.http.svr.app.module_.ling_.enCn_.BySessionX.GetEnCn("Error when loading:","加载出现了错误：")%>";
						$(dock).html(msg + xhr.status + " " + xhr.statusText + "<hr/>" + response);<%-- deleloper's responsibility to ensure the url is safe; --%>
					}
					else {
						var article = dock; <%-- dock is regarded as article --%>
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
									article = dock.firstElementChild;  <%-- if children is an element, then it is regarded as article --%>
								}
							}
						}
							<%--MathJax.Hub.Queue(["Typeset", MathJax.Hub, dock]);--%>
						nilnul.express.compose(
							article || dock
							,
							1 <%-- ordinal from 1--%>
						);

					}
				}


			);

		};

		var pub = function () {

		};
		var ini = function () {
		};
		var ready = function () {
			ini();
			pub();
		};

		ready();
	}
	;
<% #if false %>
</script>
<% #endif %>
