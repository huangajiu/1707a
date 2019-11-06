<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.2.min.js" ></script>
<link href="<%=request.getContextPath() %>/css/css.css" rel="stylesheet">
</head>
<body>
	<table>
		<tr>
			<th><input type="checkbox" id="qx"></th>
			<th>影片名</th>
			<th>导演</th>
			<th>票价</th>
			<th>上映时间</th>
			<th>时长</th>
			<th>类型</th>
			<th>年代</th>
			<th>区域</th>
			<th>状态</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${page.list}" var="m">
			<tr>
				<td><input type="checkbox" class="cks" name="mid" value="${m.mid}"></td>
				<td>${m.mname}</td>
				<td>${m.pname}</td>
				<td>${m.price}</td>
				<td>${m.hiredate}</td>
				<td>${m.mlen}</td>
				<td>${m.type}</td>
				<td>${m.time}</td>
				<td>${m.area}</td>
				<td>
					<c:if test="${m.zt == 1}">正在热映</c:if>
					<c:if test="${m.zt == 0}">已经下架</c:if>
					<c:if test="${m.zt == 2}">即将上映</c:if>
				</td>
				<td colspan="3">
					<a href="queryMovieByMid?mid=${m.mid}"><input type="button" value="详情"></a>
					<input type="button" value="编辑">
					<input type="button" value='<c:if test="${m.zt == 1}">下架</c:if> <c:if test="${m.zt == 0}">上架</c:if>'>
					
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="11">
				<a href="?pageNum=1">首页</a>
				<a href="?pageNum=${page.pageNum-1 < 1?page.pageNum:page.pageNum-1}">上一页</a>
				<a href="?pageNum=${page.pageNum+1 > page.pages?page.pageNum:page.pageNum+1}">下一页</a>
				<a href="?pageNum=${page.pages}">尾页</a>
			</td>
		</tr>
		<tr>
			<td colspan="11">
				<a href="query.jsp"><input type="button" value="查询影片"></a>
				<a href="add.jsp"><input type="button" value="添加影片"></a>
				<input type="button" value="删除影片" onclick="todelete()">
			</td>
		</tr>
	</table>
</body>
<script type="text/javascript">
	$(function() {
		$("#qx").toggle(function() {
			$("[name='mid']").attr("checked",true)
		},function(){
			$("[name='mid']").attr("checked",false)
		})
	})
	function todelete() {
		var mids = $("[name='mid']:checked").map(function() {
			return $(this).val();
		}).get().join(",");
		var len = $(".cks:checked").length;
		if (len>0) {
			$.post(
				"deleteMovie",
				{"mids":mids},
				function(data) {
					if (data) {
						alert("删除成功,删除了"+len+"条数据");
						location.href="queryMovieAll";
					}
				},
				"json"
			)
		} else {
			alert("至少选择一条数据");
		}
	}
</script>
</html>