<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Js.ascx.cs" Inherits="nilnul._express_._compose_._WEB_.loader_._titled.Js" %>
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
				dock= children[i++],

			$dock = $(dock);

			var url = nilnul.queryString("url");
			if (typeof (url) == "undefined" || url === null || url === "") {
				$(dock).text("url？不存在的！");

				return;
			}
			$(dock).text("nilnul.express 正渲染文档格式：" + url + " ...");

			$.ready(

				$dock.load(
					url,
						<%--{},--%>

						function (response, status, xhr) {

							if (status === "error") {

								var msg = "加载出现了错误:";

								$(dock).html(msg + xhr.status + " " + xhr.statusText + "<hr/>" + response);


							}
							else {
								
								<%--MathJax.Hub.Queue(["Typeset", MathJax.Hub, dock]);--%>
								nilnul.express.compose.torso(
									dock.childNodes
								);
  
							}
						}


					
					)
			
				
			);
		}
	;
<% #if false %>
	</script>
<% #endif %>
