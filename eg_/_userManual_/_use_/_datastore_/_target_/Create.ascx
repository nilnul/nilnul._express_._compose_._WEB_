<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_target_/_create_/byMenu/Fig.ascx" TagPrefix="uc1" TagName="Fig" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_target_/_create_/panel/Fig.ascx" TagPrefix="uc2" TagName="Fig" %>




<section>
	<h1>新建</h1>
	<p>
		用户可以通过菜单新建构件。由于构件有很多分类，因此，新建菜单项下显示有众多分类，用户点击相应的类别新建对应材料。如<a href="#<%=Fig.ClientID %>"></a>所示。
	</p>
	<p>
		<uc1:Fig runat="server" ID="Fig" />
		</p>
	<p>
		此外，用户也可以通过构件工具条中的不同按钮来新建各种构件。
	</p>
	<p>以水平厂房为例。当用户点击新建厂房按钮或菜单项后，出现如下面板：</p>
	<p>
		<uc2:Fig runat="server" ID="Fig1" />
		</p>
	<p>用户可以填写各项信息，然后保存。</p>
	<p>其它构件的字段有所不同。</p>
</section>
