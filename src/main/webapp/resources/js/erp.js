$(function(){
	$('#reset-search-btn').click(function(){
		$('#name').val('');
		$('#jumin-first-box').val('');
		$('#jumin-second-box').val('');
		$('input[name=gender]').prop('checked',false);
		$('input[name=education]').prop('checked',false);
		$('#dept').val('');
		$('input[name=skill]').prop('checked',false);
		
		$('#start-year').val('');
		$('#start-month').val('');
		$('#start-day').val('');
		$('#end-year').val('');
		$('#end-month').val('');
		$('#end-day').val('');
		
		console.log(1);
	})
	$('#allSearch-btn').click(function(){
		var $isAllSearch = $('#isAllSearch');
		console.log($isAllSearch.val());
		$isAllSearch.val('true');
		console.log($isAllSearch.val());
		$('#search-form').submit();
	})
	$('.page-no').click(function(){
		console.log($(this).data('page'))
		$('#hidden-page-no').val($(this).data('page'));
		console.log('now',$('#hidden-page-no').val())
		$('#search-form').submit();
	});
	$('.page-before').click(function(){
		console.log($(this).data('page'))
		var pageNo = $('#hidden-page-no').val();
		$('#hidden-page-no').val(Number(pageNo) - 1);
		console.log('now',$('#hidden-page-no').val())
		$('#search-form').submit();
	})
	$('.page-after').click(function(){
		console.log($(this).data('page'))
		var pageNo = $('#hidden-page-no').val();
		$('#hidden-page-no').val(Number(pageNo) + 1);
		console.log('now',$('#hidden-page-no').val())
		$('#search-form').submit();
	})
	
	//날짜 확인
	$('#search-form').submit(function(){
		var startYear = $('#start-year').val();
		var startMonth = $('#start-month').val();
		var startDay = $('#start-day').val();
		var endYear = $('#end-year').val();
		var endMonth = $('#end-month').val();
		var endDay = $('#end-day').val();
		var startDate = changeDate(startYear, startMonth, startDay);
		var endDate = changeDate(endYear, endMonth, endDay);
		
		if(startDate === '' && endDate === ''){
			return true;
		}
		if(startDate.getTime() >= endDate.getTime()){
			alert('졸업일을 확인해주세요');
			return false;
		}
		
		return true;
	})
	$('#add-form').submit(function(){
		var $name = $('#staff-name');
		var $jumin_1 = $('#jumin-first-box');
		var $jumin_2 = $('#jumin-second-box');
		var $edu = $('#add-form input[name=education]');
		var $dept = $('#add-dept');
		var $skill = $('#add-form input[name=skillCode]');
		
		var startYear = $('#add-start-year').val();
		var startMonth = $('#add-start-month').val();
		var startDay = $('#add-start-day').val();
		var endYear = $('#add-end-year').val();
		var endMonth = $('#add-end-month').val();
		var endDay = $('#add-end-day').val();
		var startDate = changeDate(startYear, startMonth, startDay);
		var endDate = changeDate(endYear, endMonth, endDay);
		
		var regex= /^[0-9]*$/;
		
		if($name.val() === ''){
			alert('이름을 입력해주세요');
			return false;
		}
		if($jumin_1.val() === '' || $jumin_2.val() === ''){
			alert('주민번호를 입력해주세요');
			return false;
		}
		if(!regex.test($jumin_1.val()) || !regex.test($jumin_2.val())){
			alert('주민번호는 숫자만 입력해주세요');
			return false;
		}
		if(!($jumin_1.val().length === 6) || !($jumin_2.val().length === 7)){
			alert('올바르지 않은 주민 번호입니다.');
			return false;
		}
		if($dept.val() === ''){
			alert('부서를 입력해주세요');
			return false;
		}
		if(startDate === '' || endDate === ''){
			alert('졸업일을 입력해주세요');
			return false;
		}
		if(startDate.getTime() >= endDate.getTime()){
			alert('졸업일을 확인해주세요');
			return false;
		}
		if(!$skill.is(':checked')){
			alert('기술을 하나 이상 선택해주세요');
			return false;
		}
		if(!$edu.is(':checked')){
			alert('학력을 선택해주세요');
			return false;
		}
		var isConfirm = confirm('정말로 저장하시겠습니까?');
		
		// AJAX로 주민번호 중복처리
		
		return isConfirm;
	})
	
	
	function changeDate(year, month, day){
		month = (month < 10) ? '0' + month : month;
		day = (day < 10) ? '0' + day : day;
		if(year === ''){
			return '';
		}
		if(month === ''){
			return '';
		}
		if(day === ''){
			return '';
		}
		return new Date (year + '-' + month + '-' + day);
	}
	
})