<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_target_/_browse_/screen/Fig.ascx" TagPrefix="uc1" TagName="Fig" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_target_/_browse_/detail/Fig.ascx" TagPrefix="uc2" TagName="Fig" %>






<section>
	<h1>浏览</h1>
	<p>
		用户可以点击菜单项浏览构件后，显示如下面板：
	</p>
	<p>
		<uc1:Fig runat="server" ID="Fig" />

	<p>
		如上图所示，系统以树形结构显示不同构件。右侧显示各子类下的构件；用户可以双击查看详细信息。下图是双击桥梁后显示的内容。</p>
	<p>
		<uc2:Fig runat="server" ID="Fig1" />
</section>

