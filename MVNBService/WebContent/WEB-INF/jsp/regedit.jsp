<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE">
<%
	String base = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="<%=base %>/images/log.ico" rel="shortcut icon"/>
<title>����������ϵ��ʽ</title>
<script type="text/javascript" src="<%=base %>/common/easyui/jquery.min.js"></script>
<script type="text/javascript" src="<%=base %>/common/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=base %>/common/easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="<%=base %>/common/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="<%=base %>/common/easyui/themes/icon.css" />
<script type="text/javascript">
	$(function() {
		/* $("#regeditDiv").show().dialog({
			 title: 'My Dialog',
			 width: 400,
			 height: 200,
			 closable : false,
			 draggable : false,
			 modal : true,
			 buttons:[{
					text:'Save',
					handler:function(){}
				},{
					text:'Close',
					handler:function(){}
				}]
		}); */
	});
	function changeTab(selectedIndex,unselectedIndex){
		$("#tab"+selectedIndex).addClass("tabs-selected");
		$("#tab"+unselectedIndex).removeClass("tabs-selected");
		$("#content"+selectedIndex).css("display","block");
		$("#content"+unselectedIndex).css("display","none");
	}
	function refreshAuthCode(){
		$("img[name='authImage']").attr("src","<%=base %>/imageServlet?"+Math.random());
	}
	
	function regedit(id){
		$("#"+id).submit();
	}
</script>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
	font-family: '����';
}
.tabs-title{
	font-size:18px;
}
.form_table{
	width: 900px;
}
.form_table tr{
	height:50px;
}
.form_table input{
	height: 25px;
	line-height:25px;
	width:190px;
}
.table_td{
	width:200px;
	text-align: right;
}
</style>
</head>
<body>
	<c:set var="ctx" value="<%= base %>"></c:set>
	<div style="width: 1200px; margin: 0px auto;">
		<div style="background: url('<%=base %>/images/re_d.png') no-repeat;height:30px;"></div>
		<div style="width:900px;overflow: hidden;margin:0px auto;">
			<ul class="tabs" style="height: 41px;padding:0px;border:none;">
				<li id="tab0" class="tabs-selected" style="margin-left:100px;">
					<a class="tabs-inner" href="javascript:void(0)" onclick="changeTab(0,1)" style="height: 40px; line-height: 40px;">
					<span class="tabs-title">�ֻ���ע��</span>
					<span class="tabs-icon"></span>
					</a>
				</li>
				<li id="tab1">
					<a class="tabs-inner" href="javascript:void(0)" onclick="changeTab(1,0)" style="height: 40px; line-height: 40px;">
					<span class="tabs-title">��������ע��</span>
					<span class="tabs-icon"></span>
					</a>
				</li>
			</ul>
			<div id="content0" style="border:1px solid #95b8e7;">
				<form id="phoneForm" action="${ctx}/user/regedit.html" method="post">
					<table class="form_table" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td class="table_td">�ֻ����룺</td>
							<td width="200px">
								<input type="text" name="mobilePhone" />
							</td>
							<td>��֤ͨ��</td>
						</tr>
						<tr>
							<td class="table_td"></td>
							<td width="200px">
								<input type="text" id="smsCode" name="smsCode" style="width: 70px;" />
								<a id="btn" href="#" >��ȡ������֤��</a>
							</td>
							<td>��֤ͨ��</td>
						</tr>
						<tr>
							<td class="table_td">�������룺</td>
							<td width="200px"><input type="password" name="password" value=""/></td>
							<td>��֤ͨ��</td>
						</tr>
						<tr>
							<td class="table_td">ȷ�����룺</td>
							<td width="200px"><input type="password" name="repassword" value=""/></td>
							<td>��֤ͨ��</td>
						</tr>
						<tr>
							<td class="table_td">��֤�룺</td>
							<td width="200px">
								<input type="text" name="authCode" style="width: 70px;"/>
								<img name="authImage" title="�������" onclick="javascript:refreshAuthCode();" src="<%=base %>/imageServlet" style="vertical-align: middle;" />
							</td>
							<td>��֤ͨ��</td>
						</tr>
						<tr>
							<td class="table_td"></td>
							<td width="200px"><a id="btn" href="javascript:void(0);" class="easyui-linkbutton" onclick="regedit('phoneForm')" data-options="iconCls:'icon-ok'">�ύ</a> </td>
							<td></td>
						</tr>
					</table>
				</form>
			</div>
			<div id="content1" style="border:1px solid #95b8e7;display: none;">
				<form id="mailForm" action="${ctx}/user/regedit.html" method="post">
					<table class="form_table" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td class="table_td">�������䣺</td>
							<td width="200px">
								<input type="text" name="email" />
								<input type="hidden" name="mode" value="email"/>
							</td>
							<td>��֤ͨ��</td>
						</tr>
						<tr>
							<td class="table_td">�������룺</td>
							<td width="200px"><input type="password" name="password" value=""/></td>
							<td>��֤ͨ��</td>
						</tr>
						<tr>
							<td class="table_td">ȷ�����룺</td>
							<td width="200px"><input type="password" name="repassword" value=""/></td>
							<td>��֤ͨ��</td>
						</tr>
						<tr>
							<td class="table_td">��֤�룺</td>
							<td width="200px">
								<input type="text" name="authCode" style="width: 70px;" />
								<img name="authImage" title="�������" onclick="javascript:refreshAuthCode();" src="<%=base %>/imageServlet" style="vertical-align: middle;" />
							</td>
							<td>��֤ͨ��</td>
						</tr>
						<tr>
							<td class="table_td"></td>
							<td width="200px"><a id="btn" href="javascript:void(0);" class="easyui-linkbutton" onclick="regedit('mailForm')" data-options="iconCls:'icon-ok'">�ύ</a> </td>
							<td></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		
	</div>
</body>
</html>