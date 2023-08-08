<%@ Control Language="C#" AutoEventWireup="true" %>
<section>
	<h1>登录界面</h1>

	<%@ Register Src="~/eg_/_userManual_/_use_/_checkIn_/img/Fig.ascx" TagPrefix="uc1" TagName="Fig" %>

	<uc1:Fig runat="server" ID="Fig1" />
	<p>
		如<a href="#<%=Fig1.ClientID %>"></a>所示，用户输入账号和密码正确后，可以登录本系统。该封面是半透明界面，可以显示部分底层窗口内容，让用户了解窗口堆栈的层次。封面图形为对本系统功能的一个形象展示。
	</p>

</section>
