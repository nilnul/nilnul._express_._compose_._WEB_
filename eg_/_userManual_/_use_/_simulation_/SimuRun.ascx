<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_simuRun_/fig/Panel.ascx" TagPrefix="uc1" TagName="Panel" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_simuRun_/fig/LsdynaRun.ascx" TagPrefix="uc1" TagName="LsdynaRun" %>








<section>
	<h1>提交仿真运算</h1>
	<p>提交仿真运算的面板如图：</p>
	<p>
		<uc1:Panel runat="server" ID="Panel" />
	<p>
		在面板中显示的目录是“新建仿真”步骤建立的include.k文件。此文件包含了对构件和工具模型文件的引用。
	</p>
	<p>
		memory选项为仿真计算软件Simulica2022所需的参数。
	</p>
	<p>
		用户点击“提交仿真计算”后，即启动Simulica2022进行仿真计算。如图：
	</p>
	<p>
		<uc1:LsdynaRun runat="server" ID="LsdynaRun" />
	</p>
	<p>
		取决于模型精细程度和规模，Simulica2022的运算通常持续几十分钟、几个小时甚或几天。因此，一些仿真计算应提前进行，在使用时调用结果即可。
	</p>
	<p>
		在点击“提交仿真计算”启动Simulica2022的同时，系统会打开仿真结果查看面板，以进行下一步操作。
	</p>
</section>
