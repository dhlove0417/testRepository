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
</head>
<body>
	<%@ include file="/views/common/menubar.jsp" %>
	<div class="outer">
		<br>
		<h2 align="center">게시글 작성</h2>
		<br>
		<form action="${contextPath }/insert.bo" method="post" id="enroll-area" encType="multipart/form-data">
			<table align="center" border="1">
				<tr>
					<th width="70">카테고리</th>
					<td width="70">
						<select name="category">
						<%--반복문을 이용해서 카테고리 옵션태그 뽑아주기 --%>
						<%--
						<c:forEach items="반복할 아이템(가지고올꺼라 el)" var="접근한 대상의 이름(아무거나써/어떻게 쓸건지 정의)">
							<option value="카테고리번호(c.categoryNo-->이건 VO에 이걸쓰려면 getter메소드 있어야함)">카테고리이름</option>
						</c:forEach>
						 --%>
						 <c:forEach items="${clist }" var="c">
							 <option value="${c.categoryNo }">${c.categoryName}</option>
						 </c:forEach>
						</select>
					</td>
					<th width="70">제목</th>
					<td width="350"><input type="text" name="title" required></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3">
						<textarea name="content" rows="10" style="resize:none" required></textarea>
						
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td colspan="3">
						<input type="file" name="uploadFile">
					</td>
				</tr>
			</table>
			
			<div align="center">
				<button type="submit">글작성</button>
				<button type="reset">취소</button>
			</div>
			
		</form>
		
		</div>
		
		
		<br><br>
	</div>
</body>
</html>