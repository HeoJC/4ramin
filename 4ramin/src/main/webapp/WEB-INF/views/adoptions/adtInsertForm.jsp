<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/custom-bs.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="fonts/line-icons/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/quill.snow.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">    
  </head>
  
  <script>
  function adtSubmit(){
	  console.log('adtSubmit12');
	  let title = document.adtInsertFrm.title.value;
	  let adtExp = document.adtInsertFrm.adtExp.value;
	  let career = document.adtInsertFrm.career.value;
	  let email = document.adtInsertFrm.email.value;
	  let imgSrc = document.adtInsertFrm.imgSrc.value;
	  if(email==null || email==""){
		  alert('이메일을 입력하십시오.');
		  document.adtInsertFrm.email.focus();
		  return false;
	  }
	  if(title==null || title==""){
		  alert('제목을 입력하십시오.');
		  document.adtInsertFrm.title.focus();
		  return false;
	  }
	  if(career==null || career==""){
		  alert('요구경력을 입력하십시오.');
		  document.adtInsertFrm.career.focus();
		  return false;
	  }
	  if(adtExp==null || adtExp==""){
		  alert('종료일을 입력하십시오.');
		  document.adtInsertFrm.adtExp.focus();
		  return false;
	  }
	  if(imgSrc==null || imgSrc==""){
		  alert('이미지를 등록하십시오.');
		  document.adtInsertFrm.imgSrc.focus();
		  return false;
	  }
	  let sentences = document.getElementsByClassName('ql-editor')[0].childNodes
	  let contents= "";
	  for(let i=0;i<sentences.length;i++){
		  contents=contents+"<br>"+sentences[i].innerHTML;
	  } 
	  document.adtInsertFrm.contents.value=contents;
	  document.adtInsertFrm.comId.value="hihi"; //${sessionScope.id };
	  console.log(document.adtInsertFrm.contents.value);
	  adtInsertFrm.submit();
  }
  </script>
  
  <body id="top">

    <section class="site-section">
      <div class="container">

        <div class="row align-items-center mb-5">
          <div class="col-lg-8 mb-4 mb-lg-0">
            <div class="d-flex align-items-center">
              <div>
                <h2>채용공고 등록</h2>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="row">
              <div class="col-6">
                <a href="#" class="btn btn-block btn-light btn-md"><span class="icon-open_in_new mr-2"></span>미리보기</a>
              </div>
              <div class="col-6">
                <a href="javascript:void(0)" class="btn btn-block btn-primary btn-md" onclick="adtSubmit()">등록</a>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-lg-12">
            <form name="adtInsertFrm" action="adtInsertFrm.do" class="p-4 p-md-5 border rounded" method="get">
            <input type="hidden" name="contents" id="contents">
            <input type="hidden" name="comId" id="comId">
              <h3 class="text-black mb-5 border-bottom pb-2">공고 상세</h3>
              
              <div class="form-group">
                <label for="company-website-tw d-block">대표 이미지 설정</label> <br>
                <label class="btn btn-primary btn-md btn-file">
                  파일 선택<input type="file" name="imgSrc">
                </label>
              </div>

              <div class="form-group">
                <label for="email">Email</label>
                <input name="email" type="email" class="form-control" id="email" placeholder="이메일@email.com">
              </div>
              <div class="form-group">
                <label for="job-title">제목</label>
                <input name="title" type="text" class="form-control" id="job-title" placeholder="채용 공고 제목">
              </div>

              <div class="form-group">
                <label for="job-region">위치</label>
                <select class="selectpicker border rounded" id="job-region" data-style="btn-black" data-width="100%" data-live-search="true" title="Select Region">
                      <option>Anywhere</option>
                    </select>
              </div>

              <div class="form-group">
                <label for="job-type">요구 경력</label>
                <select name="career" class="selectpicker border rounded" id="job-type" data-style="btn-black" data-width="100%" data-live-search="false" title="Select Job Type">
                  <option>경력 무관</option>
                  <option>신입</option>
                  <option>경력 1년 이상</option>
                  <option>경력 2년 이상</option>
                  <option>경력 3년 이상</option>
                  <option>경력 5년 이상</option>
                </select>
              </div>
              
			<div class="form-group">
                <label for="salType">급여</label>
                <select name="salType" class="selectpicker border rounded" id="job-type" data-style="btn-black" data-width="100%" data-live-search="false" title="Select Job Type">
                  <option>연봉</option>
                  <option>월급</option>
                  <option>일당</option>
                  <option>시급</option>
                </select>
              </div>
              
               <div class="form-group">
                <label for="salHowmuch">액수</label>
                <input name="salHowmuch" type="number" class="form-control" placeholder="0,000" >원
              </div>


              <div class="form-group">
              <label for="job-region">지원 접수 만료일</label><br>
              <input name="adtExp" type="date">
              </div>

              <div class="form-group">
                <label for="job-description">공고 본문</label>
                <div class="editor" id="editor-1">
                <textarea id="content" name="content"></textarea>
                
                  <!-- <input name="body" type="text"><p>채용공고 본문을 작성해주세요</p> -->
                </div>
              </div>

            </form>
          </div>

         
        </div>
        <div class="row align-items-center mb-5">
          
          <div class="col-lg-4 ml-auto">
            <div class="row">
              <div class="col-6">
                <a href="#" class="btn btn-block btn-light btn-md"><span class="icon-open_in_new mr-2"></span>미리보기</a>
              </div>
              <div class="col-6">
                <button class="btn btn-block btn-primary btn-md" onclick="adtSubmit()">등록</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- SCRIPTS -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/stickyfill.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/quill.min.js"></script>
    
    
    <script src="js/bootstrap-select.min.js"></script>
    
    <script src="js/custom.js"></script>
   
   
     
  </body>
</html>