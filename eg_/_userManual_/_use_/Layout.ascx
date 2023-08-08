<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="_layout_/fig/Menu.ascx" TagPrefix="uc1" TagName="Menu" %>

<section>
	<h1>界面布局

	</h1>
	<p>用户根据自己偏好，可以配置界面布局。</p>
	<p>用户可以从视图菜单中，选择是否显示状态条\各种工具条等。如图：</p>
	<p>
		<uc1:Menu runat="server" ID="Menu" />
	<p>
		此外，用户还可以选择配色方案。
	</p>
	<p>
		在窗口菜单中，用户可以选择切换主窗口或者关闭已经打开的所有主窗口。
	</p>
</section>