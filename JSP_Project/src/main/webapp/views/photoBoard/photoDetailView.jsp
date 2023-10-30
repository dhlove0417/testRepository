<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#enroll-area>table{
		border : 1px solid white;
	}
	#enroll-area input,#enroll-area textarea{
		width : 100%;
		box-sizing : border-box;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
<%@ include file="../common/menubar.jsp" %>
	<div class="outer">
		<br>
		<h2 align="center">사진 게시글 상세보기</h2>
		<br>
			<table align="center" border="1">
				<tr>
					<th width="100">제목</th>
					<td colspan="3">${b.boardTitle }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3">
						<p style="height:70px">${b.boardContent }</p>
					</td>
				</tr>
				<tr>
					<th>대표이미지</th>
					<c:forEach items="${list }" var="at" varStatus="vs">
						<c:choose>
							<c:when test="${vs.index eq 0 }">
								<!-- 첫번째 요소니까 대표이미지 -->
								<td colspan="3" align="center">
									<img id="titleImg" src="${contextPath }${at.filepath}${at.changeName}" width="250" height="170">
								</td>
							</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<th>상세이미지</th>
									<td><img id="contentImg${vs.count }" src="${contextPath }${at.filePath}${at.ChangeName}" width="150" height="120"></td>
								</tr>
							</c:otherwise>
						</c:choose>
					</c:forEach>
			</table>
			<br><br>
			
		
		
		<br><br>
	</div>
</body>
</html>