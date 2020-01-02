<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"  src="<%=request.getContextPath() %>/js/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/index_work.css">
</head>
<body>
<form>
图书名称：<input type="text" name="bname"><br>
作者：<input type="text" name="bauthor"><br>
价格：<input type="text" name="bprice"><br>
页数：<input type="text" name="bpages"><br>
详情：<textarea rows="5px" cols="20px" name="bfocus"></textarea>
<br>
类型：<select name="tid">
<c:forEach items="${typeList}" var="tl">
<option value="${tl.tid}">${tl.tname}</option>
</c:forEach>
</select>
</form>
<button id="add">添加</button>
</body>
<script type="text/javascript">
$(function(){
	$("#add").click(function(){
		$.post("<%=request.getContextPath() %>/books/add",$("form").serialize(),function(back){
			if(back>0){
				alert("添加成功");
				location="<%=request.getContextPath() %>/books/list";
			}
		},"json")
	});
});
</script>
</html>