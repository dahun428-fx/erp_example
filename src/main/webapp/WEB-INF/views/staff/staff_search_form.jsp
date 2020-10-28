<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>ERP 예제</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="<c:url value="/resources/css/erp.css"/>" /> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid">
  		<form action="search.do" method="post">
  <div class="row">
  <!-- 검색 form -->
  	<div class="col-sm-12 mt-2">
  		<div class="row">
  			<div class="col-sm-12">
		  		<table class="table table-bordered" id="search-form-table">
		  			<tbody>
		  				<tr>
		  					<td colspan="6">
		  						<h3 class="text-center">사원 정보 검색</h3>
		  					</td>
		  				</tr>
		  				<tr>
		  					<td>
		  						<div>이름</div>
		  					</td>
		  					<td>
		  						<div class="form-group">
		  							<input type="text" class="form-control" name="name"/>
		  						</div>
		  					</td>
		  					<td>
		  						<div>성별</div>
		  					</td>
		  					<td>
		  						<div class="form-group">
		  							<input id="radio-male" class="input-control" 
		  								type="radio" name="gender" value="male" checked="checked"/>
		  							<label for="radio-male">남</label>
		  							<input id="radio-female" class="input-control"  
		  								type="radio" name="gender" value="female"/>
		  							<label for="radio-female">여</label>
		  						</div>
		  					</td>
		  					<td>
		  						<div>부서</div>
		  					</td>
		  					<td>
		  						<div class="form-group">
		  							<select name="department" class="form-control">
		  								<option value="" selected="selected"></option>
		  							<c:if test="${not empty deptList}">	
		  								<c:forEach items="${deptList }" var="dept">
		  								<option value="${dept.code }" >${dept.name }</option>
		  								</c:forEach>
		  							</c:if>	
		  							</select>
		  						</div>
		  					</td>
		  				</tr>
		  				<tr>
		  					<td>
		  						<div>학력</div>
		  					</td>
		  					<td>
		  						<div class="form-group">
		  						<!-- list jstl 구현 -->
		  						<c:if test="${not empty schoolList}">
			  						<c:forEach items="${schoolList }" var="school">
			  							<input type="radio" class="input-control" id="education-${school.code }" 
			  								name="education" value="${school.name }"/>
			  							<label for="education-${school.code }">${school.name }</label>
			  						</c:forEach>
		  						</c:if>
		  						</div>
		  					</td>
		  					<td>
		  						<div>기술</div>
		  					</td>
		  					<td colspan="3">
		  						<div class="form-group">
		  						<!-- checkbox list 기술 jstl 구현 -->
		  						<c:if test="${not empty skillList}">
			  						<c:forEach items="${skillList }" var="skill">
			  							<input type="checkbox" class="input-control" 
			  							name="skill" value="${skill.name }" id="skill-${skill.code }"/>
			  							<label for="skill-${skill.code }">${skill.name }</label>
			  						</c:forEach>
		  						</c:if>
		  						</div>
		  					</td>
		  				</tr>
		  				<tr>
		  					<td>
		  						<div>졸업일</div>
		  					</td>
		  					<td colspan="5">
		  						<div class="form-group text-center">
		  							<fmt:formatDate value="${todayDate }" var="todayYear" pattern="yyyy"/>
		  							<fmt:formatDate value="${todayDate }" var="todayMonth" pattern="MM"/>
		  							<fmt:formatDate value="${todayDate }" var="todayDay" pattern="dd"/>
			  						<span>
				  						<select name="startYear" id="start-year" class="input-control">
				  							<option value="" selected="selected"></option>
				  							<c:forEach begin="0" end="${todayYear - 1970 }" var="i">
				  								<c:set var="yearOption" value="${todayYear - i }" />
				  								<option value="${yearOption }"
				  								>${yearOption}</option>
				  							</c:forEach>
				  						</select>
				  						<span>년</span>
				  						<select name="startMonth" id="start-month" class="input-control">
				  							<option value=""></option>
				  							<c:forEach begin="1" end="12" var="month">
				  								<option value="${month }"
				  								>${month }</option>
				  							</c:forEach>
				  						</select>
				  						<span>월</span>
				  						<select name="startDay" id="start-day" class="input-control">
				  							<option value=""></option>
				  							<c:forEach begin="1" end="31" var="day">
					  							<option value="${day }"
					  							>${day }</option>
				  							</c:forEach>	
				  						</select>
				  						<span>일</span>
			  						</span>
			  						<span style="margin:0 20px 0 20px;">~</span>
			  						<span>
			  							<select name="endYear" id="end-year" class="input-control">
				  							<option value="" selected="selected"></option>
				  							<c:forEach begin="0" end="${todayYear - 1970 }" var="i">
				  								<c:set var="yearOption" value="${todayYear - i }" />
				  								<option value="${yearOption }"
				  								>${yearOption}</option>
				  							</c:forEach>
				  						</select>
				  						<span>년</span>
				  						<select name="endMonth" id="end-month" class="input-control">
				  							<option value=""></option>
				  							<c:forEach begin="1" end="12" var="month">
				  								<option value="${month }"
				  								>${month }</option>
				  							</c:forEach>
				  						</select>
				  						<span>월</span>
				  						<select name="endDay" id="end-day" class="input-control">
				  							<option value=""></option>
				  							<c:forEach begin="1" end="31" var="day">
					  							<option value="${day }"
					  							>${day }</option>
				  							</c:forEach>	
				  						</select>
				  						<span>일</span>
			  						</span>
		  						</div>
		  					</td>
		  				</tr>
		  			</tbody>
		  		</table>
  			</div>
  			<div class="col-sm-12">
  				<div class="row">
  					<div class="col-sm-6 text-right">
		  				<button style="width: 10rem;" class="btn btn-primary" type="button">검색</button>
  					</div>
  					<div class="col-sm-6 text-right">
		  				<button class="btn btn-primary" type="button">전부검색</button>
		  				<button class="btn btn-primary" type="reset">초기화</button>
		  				<button class="btn btn-primary" type="button">등록</button>
  					</div>
  				</div>
  			</div>
  		</div>
  		
  	</div>
  	<!-- 검색결과 -->
  	<div class="col-sm-12 mt-5">
  		<table class="table table-bordered">
  			<colgroup>
  			<col width="10%">
  			<col width="20%">
  			<col width="10%">
  			<col width="20%">
  			<col width="20%">
  			<col width="20%">
  			</colgroup>
  			<thead class="table-dark text-center">
  				<tr>
  					<th>번호</th>
  					<th>이름</th>
  					<th>성별</th>
  					<th>부서</th>
  					<th>졸업일</th>
  					<th></th>
  				</tr>
  			</thead>
  			<tbody class="text-center">
  				<tr>
  					<td>1</td>
  					<td>1</td>
  					<td>1</td>
  					<td>1</td>
  					<td>1</td>
  					<td>
  						<button class="btn btn-secondary">수정/삭제</button>
  					</td>
  					
  				</tr>
  			</tbody>
  		</table>
  	</div>
  	<div class="col-sm-12 mt-1 d-flex justify-content-center">
			<nav aria-label="Page navigation">
				<ul class="pagination text-center">
					<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
							class="sr-only">Next</span>
						</a></li>
				</ul>
			</nav>
	</div>
  </div>
  </form>
</div>

<script type="text/javascript" src="<c:url value="/resources/js/erp.js" />"></script>
</body>
</html>