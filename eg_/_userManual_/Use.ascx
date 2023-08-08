<%@ Control Language="C#" AutoEventWireup="true"  %>
<section>
	<h1>
		使用本系统
	</h1>
<%@ Register Src="~/eg_/_userManual_/_use_/CheckIn.ascx" TagPrefix="uc1" TagName="CheckIn" %>


	<uc1:CheckIn runat="server" ID="CheckIn" />

	<%@ Register Src="_use_/MainForm.ascx" TagPrefix="uc1" TagName="MainForm" %>
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
</section>
