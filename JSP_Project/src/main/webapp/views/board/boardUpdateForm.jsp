<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#update-area>table{
		border : 1px solid white;
	}
	#update-area input,#update-area textarea{
		width : 100%;
		box-sizing : border-box;
	}
</style>
</head>
<body>
	<%@ include file="/views/common/menubar.jsp" %>
	<div class="outer">
		<br>
		<h2 align="center">게시글 수정</h2>
		<br>
		<form action="${contextPath }/update.bo" method="post" id="update-area" encType="multipart/form-data">
			<%--어떠한 게시글을 수정할지 알아야하기 때문에 번호 보내기 --%>
			<input type="hidden" name="boardNo" value="${b.boardNo }">
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
						<script >
							$(function(){
								//비교대상 : Board 객체에 담겨있는 category(카테고리이름)
								//select option 목록에서 똑같은 카테고리이름인 요소를 선택하기
								var choose = "${b.category}"; //문자열이니까 " "써줘야
								//console.log(choose); //Board 객체에 담겨있는 category(카테고리이름)
								
								$("#update-area option").each(function(){
									
									//console.log($(this).text()); //각 요소의 텍스트
									//데이터베이스에서 조회해온 게시글의 카테고리와 카테고리 목록 중 텍스트가 같은 요소
									if($(this).text()==choose){ //비교대상이 같아면
										$(this).attr("selected",true); //해당 요소 객체의 selected속성을 true값으로 변경
										//선택되어짐
										return false; //break; 역할
									}
								});
							});
						</script>
					</td>
					<th width="70">제목</th>
					<td width="350"><input type="text" name="title" value="${b.boardTitle }" required></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3">
						<textarea name="content" rows="10" style="resize:none" required>"${b.boardContent }" </textarea>
						
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td colspan="3">
						<c:if test="${at !=null }">
							<%--첨부파일이 있다면 해당 정보를 보여줘야한다. --%>
							${at.originName }
							<%--원본파일의 파일번호와 수정명을 서버에 전달하기(원본파일에 대한 처리를 위해) --%>
							<input type = "hidden" name="originFileNo" value="${at.fileNo }">
							<input type = "hidden" name="originFileName" value="${at.changeName }">
						</c:if>
						<input type="file" name="reUploadFile">
					</td>
				</tr>
			</table>
			
			<div align="center">
				<button type="submit">수정하기</button>
				<button type="reset">취소</button>
			</div>
			
		</form>
		
		</div>
		
		
		<br><br>
	</div>
</body>
</html>