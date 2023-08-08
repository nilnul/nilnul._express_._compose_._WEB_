<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_material_/_browse_/screen/Fig.ascx" TagPrefix="uc1" TagName="Fig" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_material_/_browse_/detail/Fig.ascx" TagPrefix="uc2" TagName="Fig" %>






<section>
	<h1>浏览</h1>
	<p>
		<uc1:Fig runat="server" ID="Fig" />
	<p>
		如<a href="#<%=Fig.ClientID %>"></a>所示，用户点击菜单或按钮后可以浏览材料。
	</p>
	<p>
		用户可双击右侧材料查看材料详情如<a href="#<%=Fig.ClientID %>"></a>所示。
	</p>
	<p>
		<uc2:Fig runat="server" ID="Fig1" />
	</p>
	<p>
		在
<a href="#<%=Fig.ClientID %>"></a>中，用户可点击“加载”按钮，查看被加载的材料信息。也可以点击“更新”按钮，更新当前材料信息。还可以点击“另存”按钮，把信息保存为新材料。
	</p>
</section>