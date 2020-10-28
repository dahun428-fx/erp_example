$(function(){
	
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
		if(startDate.getTime() >= endDate.getTime()){
			alert('졸업일을 확인해주세요');
			return false;
		}
		return true;
	})
	$('#add-form').submit(function(){
		
		if($('#staff-name').val() === ''){
			
		}
		
		
		var startYear = $('#add-start-year').val();
		var startMonth = $('#add-start-month').val();
		var startDay = $('#add-start-day').val();
		var endYear = $('#add-end-year').val();
		var endMonth = $('#add-end-month').val();
		var endDay = $('#add-end-day').val();
		
		console.log(startYear, startMonth, startDay, endYear, endMonth, endDay);
		var startDate = changeDate(startYear, startMonth, startDay);
		var endDate = changeDate(endYear, endMonth, endDay);
		console.log(startDate, endDate);
		if(startDate.getTime() >= endDate.getTime()){
			alert('졸업일을 확인해주세요');
			return false;
		}
		
		var isConfirm = confirm('정말로 저장하시겠습니까?');
		if(isConfirm){
			console.log('t')
		} else {
			console.log('f')
		}
		return false;
	})
	
	
	function changeDate(year, month, day){
		month = (month < 10) ? '0' + month : month;
		day = (day < 10) ? '0' + day : day;
		return new Date (year + '-' + month + '-' + day);
	}
	
})