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
	<form action="queryMovieAll" method="post">
		影视名称:<input type="text" name="mname">
		上映时间:<input type="text" name="hiredate"> - <input type="text"><br><br>
		导演:<input type="text" name="pname">
		价格:<input type="text" name="price"> - <input type="text"><br><br>
		电影年代:<input type="text" name="time">
		电影时长:<input type="text" name="mlen"> - <input type="text"><br><br>
		<input type="submit" value="查询影片">
		<a href="query.jsp"><input type="button" value="重置查询"></a>
	</form>
</body>
</html>