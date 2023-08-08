<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_material_/_create_/screen/Fig.ascx" TagPrefix="uc1" TagName="Fig" %>


<section>
	<h1>新建</h1>
	<p>
		<uc1:Fig runat="server" ID="Fig" />
	<p>
		如<a href="#<%=Fig.ClientID %>"></a>所示，用户点击菜单或按钮后可以新建材料。
	</p>
	<p>
		点击“加载”可以查看指定材料；点击“更新”可以更新当前材料；点击“另存”可以把当前信息另存为材料。
	</p>
</section>