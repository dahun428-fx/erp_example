<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <div class="row">
  <!-- 검색 form -->
  	<div class="col-sm-12 mt-2">
  		<form action="">
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
		  								type="radio" name="sex" value="male" checked="checked"/>
		  							<label for="radio-male">남</label>
		  							<input id="radio-female" class="input-control"  
		  								type="radio" name="sex" value="female"/>
		  							<label for="radio-female">여</label>
		  						</div>
		  					</td>
		  					<td>
		  						<div>부서</div>
		  					</td>
		  					<td>
		  						<div class="form-group">
		  							<select name="department" class="form-control">
		  								<option value="" selected="selected">전체</option>
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
		  							<input type="radio" class="input-control" id="graduate-highschool" 
		  								name="graduate" value="고졸" checked="checked"/>
		  							<label for="graduate-highschool">고졸</label>
		  							<input type="radio" class="input-control" id="graduate-college" 
		  								name="graduate" value="전문대졸"/>
		  							<label for="graduate-college">전문대졸</label>
		  							<input type="radio" class="input-control" id="graduate-university"
		  								name="graduate" value="일반대졸"/>
		  							<label for="graduate-university">일반대졸</label>
		  						</div>
		  					</td>
		  					<td>
		  						<div>기술</div>
		  					</td>
		  					<td colspan="3">
		  						<div class="form-group">
		  						<!-- checkbox list 기술 jstl 구현 -->
		  							<input type="checkbox" class="input-control"  
		  							name="skill" value="Java" id="skill-java"/>
		  							<label for="skill-java">Java</label>
		  							<input type="checkbox" class="input-control" 
		  							name="skill" value="JSP" id="skill-jsp"/>
		  							<label for="skill-jsp">JSP</label>
		  							<input type="checkbox" class="input-control" 
		  							name="skill" value="ASP" id="skill-asp"/>
		  							<label for="skill-asp">ASP</label>
		  							<input type="checkbox" class="input-control" 
		  							name="skill" value="ASP" id="skill-asp"/>
		  							<label for="skill-asp">ASP</label>
		  							<input type="checkbox" class="input-control" 
		  							name="skill" value="ASP" id="skill-asp"/>
		  							<label for="skill-asp">ASP</label>
		  						</div>
		  					</td>
		  				</tr>
		  				<tr>
		  					<td>
		  						<div>졸업일</div>
		  					</td>
		  					<td colspan="5">
		  						<div class="form-group text-center">
			  						<span>
				  						<select name="" id="" class="input-control">
				  							<option value=""></option>
				  						</select>
				  						<span>년</span>
				  						<select name="" id="" class="input-control">
				  							<option value=""></option>
				  						</select>
				  						<span>월</span>
				  						<select name="" id="" class="input-control">
				  							<option value=""></option>
				  						</select>
				  						<span>일</span>
			  						</span>
			  						<span style="margin:0 20px 0 20px;">~</span>
			  						<span>
			  							<select name="" id="" class="input-control">
			  							<option value=""></option>
				  						</select>
				  						<span>년</span>
				  						<select name="" id="" class="input-control">
				  							<option value=""></option>
				  						</select>
				  						<span>월</span>
				  						<select name="" id="" class="input-control">
				  							<option value=""></option>
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
  		</form>
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
  </div>
  
</div>

<script type="text/javascript" src="<c:url value="/resources/js/erp.js" />"></script>
</body>
</html>