<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_article_/Title.ascx" TagPrefix="uc1" TagName="Title" %>
<%@ Register Src="~/eg_/_article_/Torso.ascx" TagPrefix="uc1" TagName="Torso" %>
<%@ Register Src="~/eg_/_article_/Address.ascx" TagPrefix="uc1" TagName="Address" %>
<%@ Register Src="~/eg_/_article_/Bibliography.ascx" TagPrefix="uc1" TagName="Bibliography" %>







<article>
	<uc1:Title runat="server" ID="Title" />
	<uc1:Address runat="server" ID="Address" />
	<uc1:Torso runat="server" ID="Torso" />
	<uc1:Bibliography runat="server" ID="Bibliography" />
</article>
