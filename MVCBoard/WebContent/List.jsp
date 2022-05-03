<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 부트스트랩 CDN ----------------------------------------------------------------------------------->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- 부트스트랩 CDN 끝 -->

<title>파일 첨부형 게시판</title>
<style>a{text-decoration: none;}</style>
</head>
<body>
<div class="container">
	<h2>파일 첨부형 게시판 - 목록 보기(List)</h2>
	<br/>
	<!-- 검색 폼 -->
	<form method="get">
		<div class="container">
			<div class="row">
				<div class="col">
					<select name="searchField">
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>
				</div>
				<div class="col">
					<input type="text" class="form-control" name="searchWord" />
				</div>
				<div class="col">
					<input type="submit" class="btn btn-secondary" value="검색하기" />
				</div>
			</div>
		</div>
	</form>
	<!-- 목록 테이블 -->
	<table  class="table">
		<tr class="thead-dark" align="center">
			<th width="10%">번호</th>
			<th width="*">제목</th>
			<th width="15%">작성자</th>
			<th width="10%">조회수</th>
			<th width="15%">작성일</th>
			<th width="8%">첨부</th>
		</tr>
<c:choose>
	<c:when test="${ empty boardLists }"> <!-- 게시물이 없을때 -->
		<tr>
			<td colspan="6" align="center">
				등록된 게시물이 없습니다.
			</td>
		</tr>
	</c:when>
	<c:otherwise> <!-- 게시물이 있을 때 -->
		<c:forEach items="${ boardLists }" var="row" varStatus="loop">
		<tr align="center">
			<td> <!-- 번호 -->
				${ map.totalCount - (((map.pageNum-1) * map.pageSize) + loop.index)}
			</td>
			<td align="left"> <!-- 제목(링크) -->
				<a href="../mvcboard/view.do?idx=${ row.idx }">${ row.title }</a>
			</td>
			<td>${ row.name }</td> <!-- 작성자 -->
			<td>${ row.visitcount }</td> <!-- 조회수 -->
			<td>${ row.postdate }</td> <!-- 작성일 -->
			<td> <!-- 첨부파일 -->
				<c:if test="${ not empty row.ofile }">
					<a href="../mvcboard/download.do?ofile=${ row.ofile }&sfile=${ row.sfile }&idx=${ row.idx }">[Down]</a>
				</c:if>
			</td>
		</tr>
		</c:forEach>
	</c:otherwise>
</c:choose>
	</table>
	
	<!-- 하단 메뉴(바로가기, 글쓰기) -->
	<div>
		<div align="center">
			<div>
				${ map.pagingImg }
			</div>
			<div>
				<button type="button" class="btn btn-secondary" onclick="location.href='../mvcboard/write.do';">글쓰기</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>