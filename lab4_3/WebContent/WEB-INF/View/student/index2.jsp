<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Spring MVC</title>
	<base href="${pageContext.servletContext.contextPath}/">
	<style>
	li {
		list-style: none;
		line-height: 25px;
	}
	
	li>label {
		display: inline-block;
		text-align: right;
		width: 110px;
		font-variant: small-caps;
		font-weight: bold;
	}
	</style>
</head>
<body>
	<h1>EL - JSTL</h1>
	<ul>
		<li><label>Họ và tên:</label> ${bean.name}</li>
		<li><label>Điểm TB:</label> ${bean.mark}</li>
		<li><label>Chuyên ngành:</label> ${bean.majo}</li>
		<c:if test="${bean.mark >= 9}">
			<li><label>Danh hiệu:</label> ONG VÀNG</li>
		</c:if>
	</ul>
	<ul>
		<li><label>Họ và tên:</label> ${list[0].name}</li>
		<li><label>Điểm TB:</label> ${list[0].mark}</li>
		<li><label>Chuyên ngành:</label> ${list[0].majo}</li>
		<c:if test="${list[0].mark >= 9}">
			<li><label>Danh hiệu:</label> ONG VÀNG</li>
		</c:if>
	</ul>
	<ul>
		<li><label>Họ và tên:</label> ${map.KietLPT.name}</li>
		<li><label>Điểm TB:</label> ${map.KietLPT.mark}</li>
		<li><label>Chuyên ngành:</label> ${map.KietLPT.majo}</li>
		<c:if test="${map.KietLPT.mark >= 9}">
			<li><label>Danh hiệu:</label> ONG VÀNG</li>
		</c:if>
	</ul>
</body>
</html>