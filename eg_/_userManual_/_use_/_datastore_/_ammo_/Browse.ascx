<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_ammo_/browse/Fig.ascx" TagPrefix="uc1" TagName="Fig" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_datastore_/_ammo_/browse/_detail_/img/Fig.ascx" TagPrefix="uc2" TagName="Fig" %>


<section>
	<h1>浏览</h1>
	<p>
		<uc1:Fig runat="server" ID="Fig" />
	<p>
		如<a href="#<%=Fig.ClientID %>"></a>所示，用户可以分类浏览工具。值得注意的是，本树形结构是根据数据文件夹结构动态读取生成的。因此，用户可自行调整数据文件夹结构，然后点击此处刷新，即可看到最新的分类。
	</p>
	<p>
		当用户点击对话框右边工具时，弹出如下工具细节对话框如<a href="#<%=Fig1.ClientID %>"></a>。
	</p>
	<p>
		<uc2:Fig runat="server" ID="Fig1" />
		</p>
	<p>在
<a href="#<%=Fig1.ClientID %>"></a>中，用户可以更改工具信息，然后点击“更新库”按钮来更新数据文件夹中的数据。用户点击“查看位置”可以定位到工具所在的文件夹，从而用户可以直接修改工具文件。用户点击“另存为”可以把当前界面里的数据存为一个新的工具。
	</p>


</section>