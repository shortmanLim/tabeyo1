<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

.uploadResult {width: 100%; background-color: gray;}
.uploadResult ul{display:flex; flex-flow: row; justify-content: center; align-items: center;}
.uploadResult ul li{list-style: none; padding: 10px;}
.uploadResult ul li img{width: 300px;}
.uploadResult ul li span{color:white;}
.bigPictureWrapper{position: absolute;display: none; justify-content: center;
					align-content: center; top: 0%;width: 100%; height: 100%;background-color: gray;z-index: 100;background:rgba(255,255,255,0.5);}
.bigPicture{position: relative;display: flex;justify-content: center; align-items: center;}
.bicPicture img{width: 600px;}

</style>
<title>uploadAjax.jsp</title>
</head>
<body>
	<h2>Spring file upload with AJAX</h2>
	<div class="uploadDiv">
		<input type="file" name="uploadFile" multiple>
	</div>
	<button id="uploadBtn">Submit</button>
		<!-- 업로드결과출력 -->
	<div class='uploadResult'>
		<ul>
		
		</ul>
	</div><!-- END 업로드 결과 출력 -->
	
	
	<div class="bigPictureWrapper"><!-- 섬네일원본표시 -->
		<div class="bigPicture"></div>
	</div><!-- END 섬네일원본표시 -->
	
<script src="https://code.jquery.com/jquery-3.5.1.min.js" 
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous">
</script>
<script>
$(function(){
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880;	//5MB
	

	function checkExtension(fileName, fileSize){
		
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		if(regex.test(fileName)){
			alert("해당 종류의 파일은 업로드 할 수 없습니다.");
			return false;
		}
		
		return true;
	}//END checkExtension(fileName, fileSize)
	
	//업로드 후 <input type='file'>부분 초기화를 위한 복제
	var cloneObj = $(".uploadDiv").clone();
	
	$('#uploadBtn').on('click',function(){
		var formData = new FormData();
		var inputFile = $("input[name='uploadFile']");
		var files = inputFile[0].files;
		
		console.log(files);
		
		//formData객체에 파일 추가
		for(var i=0; i<files.length; i++){
			
			if(!checkExtension(files[i].name, files[i].size)){
				return false;
			}
			
			formData.append('uploadFile',files[i]);
		}
		
		$.ajax({
			url			:'/uploadAjaxAction',
			processData	: false,
			contentType	: false,
			data		: formData,
			type		: 'POST',
			dataType	: 'json',
			success		: function(result){
				console.log(result);
				
				showUploadedFile(result);
				$(".uploadDiv").html(cloneObj.html());
			}
		 })//END $.ajax
	});
	
	//Result목록
	var uploadResult = $(".uploadResult ul");	
		function showUploadedFile(uploadResultArr){
			var str = "";
			
			$(uploadResultArr).each(function(i, obj){
				if(!obj.image){
					var fileCallPath = encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
					str += "<li><a href='/download?fileName=" + fileCallPath + "'>"+
								"<img src='../resources/img/attach.png'>"
									+ obj.fileName + "</a>"+
									"<span data-file='"+fileCallPath+"'"+
										"data-type='file'>X</span></li>";
				} else{
					//	str += "<li>" + obj.fileName + "</li>";
					//썸네일표시
					var fileCallPath = encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
					
					//원본이미지표시
					var originPath = obj.uploadPath + "\\"+
									 obj.uuid + "_"+
									 obj.fileName;
					
					// \를 /로 모두변경
					originPath = originPath.replace(new RegExp(/\\/g),"/");
					
					str += "<li><a href=\"javascript:showImage('"+originPath+"')\">"+
					"<img src='/display?fileName="+fileCallPath+"'></a>"+
							"<span data-file='"+fileCallPath+"'"+
								"data-type='image'>X</span></li>";
				}
			});
			uploadResult.append(str);
		}//END showUploadedFile()
		
		//X표시클릭이벤트처리
		$('.uploadResult').on('click','span',function(){
			var targetFile = $(this).data('file');
			var type = $(this).data('type');
			
			$.ajax({
				url		: '/deleteFile',
				data	: {fileName : targetFile, type : type },
				dataType: 'text',
				type	: 'POST',
				success : function(result){
					alert(result);
				}
			})
		})
		
		
		//END X표시클릭이벤트처리
		
		//원본이미지숨기기처리
		$('.bigPictureWrapper').on('click',function(){
			$('.bigPicture').animate({width:'0%',height:'0%'},4000);
			
			setTimeout(() => {
				$(this).hide();
			}, 4000);
		});//END 원본이미지 숨기기처리
		
		
});
function showImage(fileCallPath){
	
	//화면가운데 표시
	$('.bigPictureWrapper').css('display','flex').show();
	
	//이미지태그 추가
	$('.bigPicture').html("<img src='/display?fileName="+
						encodeURI(fileCallPath)+"'>").animate({width:'100%',height:'100%'},4000);
	
	
}//END showImage()
</script>
</body>
</html>