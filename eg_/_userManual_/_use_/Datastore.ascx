<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/Ammo.ascx" TagPrefix="uc1" TagName="Ammo" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/Target.ascx" TagPrefix="uc1" TagName="Target" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/Material.ascx" TagPrefix="uc1" TagName="Material" %>



<section>
	<h1>模型库维护</h1>
<p>用户可以通过数据库管理菜单对材料、工具、构件库进行管理，包括浏览、新建等。此外，工具条为新建各种材料、工具、构件提供了快捷方式；比如点击新建厂房工具按钮，可以新建厂房。
	</p>

	<uc1:Ammo runat="server" ID="Ammo" />
	<uc1:Target runat="server" ID="Target" />

	<uc1:Material runat="server" ID="Material" />
</section>


