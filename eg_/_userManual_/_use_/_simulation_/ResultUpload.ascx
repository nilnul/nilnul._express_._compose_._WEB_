<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Src="~/eg_/_userManual_/_use_/_simulation_/_resultUpload_/fig/Panel.ascx" TagPrefix="uc1" TagName="Panel" %>



<section>
	<h1>仿真结果上传</h1>
	<p>仿真结果上传的面板如图：</p>
	<p>
		<uc1:Panel runat="server" ID="Panel" />

	</p>

	<p>
		在该面板中，用户根据模拟结果，填入撞坑边界点（可以从nilnul3d中标注得到坐标点序列，然后复制得到）。系统将自动计算撞坑半径。在用户输入撞坑深度后，撞坑体积即自动计算出来。用户可以标出是否震塌和是否贯穿，并填写备注。然后点击保存可以保存结果，方便以后调出查看和处理；点击上传则自动上传至配置所给定的路径，从而其他系统可以从该位置读取本系统给出的报告。
	</p>
	
</section>
