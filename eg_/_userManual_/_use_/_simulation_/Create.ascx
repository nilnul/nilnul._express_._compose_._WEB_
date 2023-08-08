<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_create_/fig/Panel.ascx" TagPrefix="uc1" TagName="Panel" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_create_/fig/PanelSelected.ascx" TagPrefix="uc1" TagName="PanelSelected" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_create_/fig/SaveTo.ascx" TagPrefix="uc1" TagName="SaveTo" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_create_/fig/WarnNonEmpty.ascx" TagPrefix="uc1" TagName="WarnNonEmpty" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_create_/fig/SaveFinished.ascx" TagPrefix="uc1" TagName="SaveFinished" %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_create_/fig/FolderContent.ascx" TagPrefix="uc1" TagName="FolderContent" %>






<section>
	<h1>新建仿真</h1>
	<p>用户通过菜单或工具按钮调出的新建仿真面板如下图：</p>
	<p>
		<uc1:Panel runat="server" ID="Panel" />
	<p>

		用户可以选择工具（未选择时，选择按钮旁有感叹号）和构件（未选择时，选择按钮旁有感叹号）。选择好工具后，调整行进速度和行进角度，系统会自动搜索给定速度、角度所对应的k文件；如果找不到，则系统会给出警示(如<a href="#<%=PanelSelected.ClientID %>"></a>所示，系统提示工具对应的k文件没有找到；用户应将对应的k文件复制到工具所在位置)。
	</p>
	<p>
		<uc1:PanelSelected runat="server" ID="PanelSelected" />
	<p>
		选择好构件后，系统会根据构件不同而显示不同的遭袭部位列表。然后系统会根据遭袭部位选择对应的k文件。如果找到，则不给出警示；如<a href="#<%=PanelSelected.ClientID %>"></a>所示
	</p>
	<p>用户点击“保存仿真任务”按钮后，如果配置有误，则系统给出提示重新配置。否则，系统将提示选择保存位置。</p>
	<p>
		<uc1:SaveTo runat="server" ID="SaveTo" />
	<p>用户应保存在空目录下（对话提供了新建目录选项）。如果用户坚持保存在非空目录下，系统会发出警告。</p>
	<p>
		<uc1:WarnNonEmpty runat="server" ID="WarnNonEmpty" />
	<p>
此时，用户可返回重新选择目录，或者自负责任继续保存到非空目录。
	</p>
	<p>
		<uc1:SaveFinished runat="server" ID="SaveFinished" />	 
	<p>
		<a href="#<%=PanelSelected.ClientID %>"></a>为保存完成后的提示。保存成功后，系统会在目录下新建工具模型文件（bumps.k）、构件模型文件（obstacle.k）以及将二者合成的含有行进角度、部位信息的模型文件（include.k）。如<a href="#<%=PanelSelected.ClientID %>"></a>所示。
	</p>
	<p>
		<uc1:FolderContent runat="server" ID="FolderContent" />
		</p>
	<p>
		在新建仿真并保存后，系统自动显示下一步骤的面板，即“提交仿真运算”面板。
	</p>
</section>
