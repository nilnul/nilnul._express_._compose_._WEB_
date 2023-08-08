<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="_help_/fig/Menu.ascx" TagPrefix="uc1" TagName="Menu" %>
<%@ Register Src="_help_/fig/Explanation.ascx" TagPrefix="uc1" TagName="Explanation" %>



<section>
	<h1>
		帮助

	</h1>
	<p>下图为帮助菜单。</p>
	
	<p>
		<uc1:Menu runat="server" ID="Menu" />

	<p>当用户点击帮助中的“说明”时，系统显示对本系统的介绍如图：</p>
	<p>
		<uc1:Explanation runat="server" ID="Explanation" />
		</p>
	<p>
		这实际上是一个网页。
	</p>
</section>