<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_ammo_/_create_/screen/Fig.ascx" TagPrefix="uc1" TagName="Fig" %>



<section>
	<h1>新建</h1>
	<p>
		<uc1:Fig runat="server" ID="Fig" />
	</p>
	<p>
		如<a href="#<%=Fig.ClientID %>"></a>所示，用户可以填写工具信息，然后点击保存按钮以新建工具。
	</p>
</section>