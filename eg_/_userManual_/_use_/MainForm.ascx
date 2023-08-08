<%@ Control Language="C#" AutoEventWireup="true" %>

<section>
	<h1>主界面</h1>
	<%@ Register Src="_mainForm_/fig/MainForm.ascx" TagPrefix="uc1" TagName="MainForm" %>
	<uc1:MainForm runat="server" ID="MainForm" />

	<p>
		如<a href="#<%=MainForm.ClientID %>"></a>所示，用户登录本系统后看到的主界面。该界面顶端是标题栏，标题栏下方是菜单，菜单下方是工具条。窗口最下方是状态条。在状态条和工具条之间是内容区，内容区里是各种面板。
	</p>
	<p>
		菜单里全面提供系统功能。工具条则对常用功能提供快捷方式。面板则是主要的操作和显示区。系统的很多功能都是从菜单、按钮点击打开面板进行的。
	</p>
	<p>
		各面板可以被拖动到任意位置停靠或漂浮。用户可以根据自己喜好任意组合面板。系统打开后会提供缺省的面板组织方式。此外，在操作部分功能时，系统会根据流程需要，自动打开下一步操作所需的面板。
	</p>


</section>
