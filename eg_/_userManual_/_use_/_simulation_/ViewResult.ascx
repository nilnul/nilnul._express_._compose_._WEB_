<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_viewResult_/fig/Panel.ascx" TagPrefix="uc1" TagName="Panel" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_viewResult_/fig/nilnul3d.ascx" TagPrefix="uc1" TagName="nilnul3d" %>










<section>
	<h1>仿真结果查看</h1>
	<p>仿真结果查看的面板如图：</p>
	<p>
		<uc1:Panel runat="server" ID="Panel" />
	<p>
		面板中的目录文件即为Simulica处理过的目录文件。
	</p>
	<p>
		点击下方“查看结果（nilnul3d）”，系统即打开nilnul3d程序。用户可以在该程序中查看模型以及产生的三维仿真效果动画。下图是对碎片击穿钢板的动画截图。
	</p>
	<p>
		<uc1:nilnul3d runat="server" ID="nilnul3d" />
		</p>
	<p>
		用户点击“查看结果（nilnul3d）”时，系统在打开nilnul3d的同时，也打开了结果上传的面板。
	</p>

</section>
