<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="_cfg_/FirstTimeRun.ascx" TagPrefix="uc1" TagName="FirstTimeRun" %>
<%@ Register Src="_cfg_/Data.ascx" TagPrefix="uc1" TagName="Data" %>
<%@ Register Src="_cfg_/Amend.ascx" TagPrefix="uc1" TagName="Amend" %>



<section>
	<h1>配置

	</h1>
	<p>本系统在运行时，会检测电脑上是否已存在配置文件。如果没有配置文件，则新建配置文件。如果存在配置文件，则读取系统配置。</p>
	<p>系统的配置包括：</p>
	<ol>
		<li>上传地址。当故障仿真结果出来后，用户填写的故障效应报告可以自动上传到该地址。</li>
		<li>用户数据存放地址。该目录存放用户的模型文件（材料、构件、工具）等。</li>
	</ol>
	<uc1:Data runat="server" ID="Data" />
	<uc1:FirstTimeRun runat="server" ID="FirstTimeRun" />
	<uc1:Amend runat="server" ID="Amend" />
</section>
