<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Src="~/eg_/Article.ascx" TagPrefix="uc1" TagName="Article" %>
<%@ Register Src="~/eg_/article/_decored_/Cover.ascx" TagPrefix="uc1" TagName="Cover" %>
<%@ Register Src="~/eg_/article/_decored_/Back.ascx" TagPrefix="uc1" TagName="Back" %>
<%@ Register Src="~/eg_/article/_decored_/Preface.ascx" TagPrefix="uc1" TagName="Preface" %>
<%@ Register Src="~/eg_/article/_decored_/Toc.ascx" TagPrefix="uc1" TagName="Toc" %>
<%@ Register Src="~/eg_/article/_decored_/Digest.ascx" TagPrefix="uc1" TagName="Digest" %>
<%@ Register Src="~/eg_/article/_decored_/Index.ascx" TagPrefix="uc1" TagName="Index" %>
<%@ Register Src="~/eg_/article/_decored_/Appendix.ascx" TagPrefix="uc1" TagName="Appendix" %>
<%@ Register Src="~/eg_/article/_decored_/Acknowledge.ascx" TagPrefix="uc1" TagName="Acknowledge" %>









<%-- an article decorated with cover, secondary page,  back， resulting such as a capstone treatise of a senior undergraduate --%>

<uc1:Cover runat="server" ID="Cover" />
<uc1:Preface runat="server" ID="Preface" />
<uc1:Digest runat="server" ID="Digest" />
<uc1:Toc runat="server" ID="Toc" />
<uc1:Article runat="server" ID="Article" />
<uc1:Appendix runat="server" ID="Appendix" />
<uc1:Index runat="server" ID="Index" />
<uc1:Acknowledge runat="server" ID="Acknowledge" />
<uc1:Back runat="server" ID="Back" />

