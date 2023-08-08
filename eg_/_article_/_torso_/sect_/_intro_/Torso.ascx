<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="_torso_/Prolog.ascx" TagPrefix="uc1" TagName="Prolog" %>
<%@ Register Src="_torso_/Sects.ascx" TagPrefix="uc1" TagName="Sects" %>

<%-- torso /trunk
 vs title,
 is an article without title. article may have other misc things besides title and torso
--%>

<uc1:Prolog runat="server" ID="Prolog" />
<uc1:Sects runat="server" id="Sects" />
