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
	<form action="addMovie" method="post">
		影片名称:<input type="text" name="mname"><br><br>
		影片导演:<input type="text" name="pname"><br><br>
		影片票价:<input type="text" name="price"><br><br>
		上映时间:<input type="text" name="hiredate"><br><br>
		影片时长:<input type="text" name="mlen"><br><br>
		影片类型:<input type="text" name="type"><br><br>
		影片年代:<input type="text" name="time"><br><br>
		上映区域:<input type="text" name="area"><br><br>
		影片状态:<select name="zt">
			  	   <option value="1">正在热映</option>
			  	   <option value="0">已经下架</option>
			  	   <option value="3">即将上映</option>
			  </select><br><br>
		<input type="submit" value="添加">
	</form>
</body>
</html>