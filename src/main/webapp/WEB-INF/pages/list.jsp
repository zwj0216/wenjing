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
<div align="center">
<a href="toAdd">添加</a>
<table>
  <tr>
    <th>选择</th>
    <th>编号</th>
    <th>书名</th>
    <th>作者</th>
    <th>价格</th>
    <th>页数</th>
    <th>详情</th>
    <th>分类</th>
    <th colspan="2">操作</th>
  </tr>
  <c:forEach items="${list.list}" var="li">
  <tr>
    <td><input type="checkbox" name="ids" value="${li.bid}"></td>
    <td>${li.bid}</td>
    <td>${li.bname}</td>
    <td>${li.bauthor}</td>
    <td>${li.bprice}</td>
    <td>${li.bpages}</td>
    <td>${li.bfocus}</td>
    <td>${li.tname}</td>
    <td><a href="<%=request.getContextPath() %>/books/delete?bid=${li.bid}">删除</a></td>
    <td><a href="<%=request.getContextPath() %>/books/toUpdate?bid=${li.bid}">修改</a></td>
  </tr>
  </c:forEach>
</table>
<tr>
<input type="hidden" name="first" value="1">
<input type="hidden" name="pre" value="${list.hasPreviousPage?list.prePage:1}">
<input type="hidden" name="next" value="${list.hasNextPage?list.nextPage:list.navigateLastPage}">
<input type="hidden" name="last" value="${list.navigateLastPage}">
<td colspan="10">
<a id="first"><input type="button" value="首页"></a>
<a id="pre"><input type="button" value="上一页"></a>
<a id="next"><input type="button" value="下一页"></a>
<a id="last"><input type="button" value="尾页"></a>
<select id="pageSize">
<option value="2" ${list.pageSize=='2'?'selected':''}>2</option>
<option value="5" ${list.pageSize=='5'?'selected':''}>5</option>
</select>
</td>
</tr>
</div>
</body>
<script type="text/javascript">
$(function(){
	$("#pageSize").change(function(){
		var da=$(this).val();
		location="<%=request.getContextPath() %>/books/list?pageSize="+da;
	});
	$("#first").click(function(){
		var da=$("#pageSize").val();
		var first=$("[name='first']").val();
		location="<%=request.getContextPath() %>/books/list?pageSize="+da+"&pageNum="+first;
	});
	$("#pre").click(function(){
		var da=$("#pageSize").val();
		var pre=$("[name='pre']").val();
		location="<%=request.getContextPath() %>/books/list?pageSize="+da+"&pageNum="+pre;
	});
	$("#next").click(function(){
		var da=$("#pageSize").val();
		var next=$("[name='next']").val();
		location="<%=request.getContextPath() %>/books/list?pageSize="+da+"&pageNum="+next;
	});
	$("#last").click(function(){
		var da=$("#pageSize").val();
		var last=$("[name='last']").val();
		location="<%=request.getContextPath() %>/books/list?pageSize="+da+"&pageNum="+last;
	});
});
</script>
</html>