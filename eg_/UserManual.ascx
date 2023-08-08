<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Src="_userManual_/Cover.ascx" TagPrefix="uc1" TagName="Cover" %>
<%@ Register Src="_userManual_/Intro.ascx" TagPrefix="uc1" TagName="Intro" %>
<%@ Register Src="_userManual_/Use.ascx" TagPrefix="uc1" TagName="Use" %>
<%@ Register Src="~/eg_/_userManual_/Intro.ascx" TagPrefix="uc2" TagName="Intro" %>
<%--
	This is used as a general template for user manuals of many nilnul systems. So for some customized systesm, you might find its usermanual similar to this one.
	
	--%>

<article>
	<h1>“零空”智慧交通仿真实验场
		<br />
		虚拟现实系统方案</h1>

	<time>2019年6月</time>

<%--	<uc2:Intro runat="server" ID="Intro" />--%>
<%@ Register Src="~/eg_/_userManual_/_use_/CheckIn.ascx" TagPrefix="uc1" TagName="CheckIn" %>

	<p>
		注意本文主要是为了演示零空文房三宝(nilnul.express)之一“妙手”(nilnul.express.compose)技术方案所达到的效果，其内容以假想的一个工程为例，文中有些用词是人为臆造的词或造成句子不通顺。大家阅读时，应忽略内容，主要注意渲染格式和效果。本技术方案特点有：</p>
	<ol>
		<li>章节的自动编号（作者只需按结构组织文档，无需在意编号；系统会自动生成编号）。
	</li>
		<li>
			图表公式的自动编号。
		</li>
		<li>
			在文中交叉引用图标公式。
		</li>
		<li>
			可采用MathML呈现公式；零空公司提供有配套的mathMl控件。
		</li>
		<li>
			该方案可采用SVG呈现插图。</li>
		<li>
			对于参考文献的支持正在开发中。由于本方案采用通行的网页服务开发技术，因此我们也鼓励使用者参与包括自制参考文献控件。</li>
		<li>
			文档部件可以在文档内和其它文档重复使用。可以使用其它网站别人发布的控件。</li>
		<li>
			本技术采用工程方式管理文档，完美支持版本控制（如多人分布式开发）。</li>
		<li>
			支持编程化处理。</li>
		<li>
			零空公司为本技术路线提供技术支持。比如零空公司的分布式控件技术可以用于本文档渲染。</li>
	</ol>
	<uc1:CheckIn runat="server" ID="CheckIn" />

	<%@ Register Src="_userManual_/_use_/MainForm.ascx" TagPrefix="uc1" TagName="MainForm" %>
	<%@ Register Src="~/eg_/_userManual_/_use_/Datastore.ascx" TagPrefix="uc1" TagName="Datastore" %>
	<%@ Register Src="~/eg_/_userManual_/_use_/Simulation.ascx" TagPrefix="uc1" TagName="Simulation" %>
	<%@ Register Src="~/eg_/_userManual_/_use_/Cfg.ascx" TagPrefix="uc1" TagName="Cfg" %>
	<%@ Register Src="~/eg_/_userManual_/_use_/Help.ascx" TagPrefix="uc1" TagName="Help" %>
	<%@ Register Src="~/eg_/_userManual_/_use_/Layout.ascx" TagPrefix="uc1" TagName="Layout" %>



	

	<uc1:MainForm runat="server" ID="MainForm" />

	<uc1:Cfg runat="server" id="Cfg" />
	<uc1:Datastore runat="server" ID="Datastore" />
	
	<uc1:Simulation runat="server" ID="Simulation" />
	<uc1:Layout runat="server" id="Layout" />
	<uc1:Help runat="server" id="Help" />
</article>
