<%@ Control Language="C#" AutoEventWireup="true"  %>

<section>
	<h1>更改配置</h1>

<%@ Register Src="_amend_/fig/Panel.ascx" TagPrefix="uc1" TagName="Panel" %> 
<uc1:Panel runat="server" ID="Panel" />

<p>
	如<a href="#<%=Panel.ClientID %>"></a>所示，在设置面板，用户可以更改仿真结果报告发往的地址，也可以新建数据文件夹。
</p>
<p>
	在新建数据文件夹时，系统会在“我的文档”（或系统设置的目录下）建立新的数据文件夹并初始化数据库（含模型库、样例库）。由于模型、样例可能比较大，这一过程可能需要持续数分钟；在持续期间，设置按钮为禁用状态，防止用户重复点击；在初始化完成后，系统会显示初始化成功，同时，设置按钮恢复可用状态。</p>
<p>
	用户可以到“我的文档”下看到新建的数据文件夹。如果用户对文档结构比较熟悉，也可以直接通过外部工具编辑其中数据，这为用户操作尤其是批量操作提供了方便。</p>

</section>
