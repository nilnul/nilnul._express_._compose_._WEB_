<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_article_/_torso_/sect_/_intro_/Title.ascx" TagPrefix="uc1" TagName="Title" %>
<%@ Register Src="~/eg_/_article_/_torso_/sect_/_intro_/Torso.ascx" TagPrefix="uc1" TagName="Torso" %>


<section>
	<uc1:Title runat="server" ID="Title" />
	<uc1:Torso runat="server" ID="Torso" />
</section>
