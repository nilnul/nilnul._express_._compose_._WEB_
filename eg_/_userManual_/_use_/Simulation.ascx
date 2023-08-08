<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/menu/Fig.ascx" TagPrefix="uc1" TagName="Fig" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/Create.ascx" TagPrefix="uc1" TagName="Create" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/SimuRun.ascx" TagPrefix="uc1" TagName="SimuRun" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/ViewResult.ascx" TagPrefix="uc1" TagName="ViewResult" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/ResultUpload.ascx" TagPrefix="uc1" TagName="ResultUpload" %>






<section>
	<h1>仿真</h1>

	<p>
		用户可以通过菜单或仿真工具条按钮来进行仿真。下图为仿真菜单内容。
	</p>

	<p>
		<uc1:Fig runat="server" ID="Fig" />
		</p>
	<uc1:Create runat="server" ID="Create" />
	<uc1:SimuRun runat="server" ID="SimuRun" />
	<uc1:ViewResult runat="server" ID="ViewResult" />
	<uc1:ResultUpload runat="server" ID="ResultUpload" />
</section>

