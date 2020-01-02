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
<body>
<form>
<input type="hidden" name="bid" value="${books.bid}">
图书名称：<input type="text" name="bname" value="${books.bname}"><br>
作者：<input type="text" name="bauthor" value="${books.bauthor}"><br>
价格：<input type="text" name="bprice" value="${books.bprice}"><br>
页数：<input type="text" name="bpages" value="${books.bpages}"><br>
详情：<input type="text" name="bfocus" value="${books.bfocus}"><br>
类型：<select name="tid" value=${books.tname}>
<c:forEach items="${typeList}" var="tl">
<c:if test="${books.tid==tl.tid}">
<option value="${tl.tid}" selected>${tl.tname}</option>
</c:if>
<c:if test="${books.tid!=tl.tid}">
<option value="${tl.tid}">${tl.tname}</option>
</c:if>
</c:forEach>
</select>
</form>
<button id="update">修改</button>
</body>
<script type="text/javascript">
$(function(){
	$("#update").click(function(){
		$.post("<%=request.getContextPath() %>/books/update",$("form").serialize(),function(back){
			if(back>0){
				alert("修改成功");
				location="<%=request.getContextPath() %>/books/list";
			}
			
		},"json");
	});
});
</script>
</html>