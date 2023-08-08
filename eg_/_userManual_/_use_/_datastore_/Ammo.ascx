<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_ammo_/Browse.ascx" TagPrefix="uc1" TagName="Browse" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_ammo_/Create.ascx" TagPrefix="uc1" TagName="Create" %>




<section>
	<h1>工具库管理</h1>
	<p>用户可以通过菜单或工具按钮进行工具库管理，包括新建和浏览零空机器狗</p>
	
	<uc1:Browse runat="server" ID="Browse" />
	<uc1:Create runat="server" ID="Create" />
</section>
