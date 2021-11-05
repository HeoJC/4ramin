<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="css/custom-bs.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="fonts/line-icons/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
</head>
<body>
  <section class="site-section">
      <div class="container">
        <div class="row align-items-center mb-5">
          <div class="col-lg-8 mb-4 mb-lg-0">
            <div class="d-flex align-items-center">
              <div>
                <h2>${company.com_name }</h2>
                <div>
                  <span class="m-2"><span class="icon-room mr-2"></span>${company.com_loc }</span>  
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="row">
              <div class="col-6">
                <a href="#" class="btn btn-block btn-light btn-md">즐겨찾기 추가</a>
              </div>
              <div class="col-6">
                <a href="#" class="btn btn-block btn-primary btn-md"><span class="icon-heart-o mr-2 text-danger"></span>좋아요</a>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-8">
            
            <div class="mb-5">
              <figure class="mb-5"><img src="images/job_single_img_1.jpg" alt="Image" class="img-fluid rounded"></figure>
              <!-- 지도 들어갈 자리 크기는 730 X 486 -->
            </div>

          </div>
          <div class="col-lg-4">
            <div class="bg-light p-3 border rounded mb-4">
              <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">기업개요</h3>
              <ul class="list-unstyled pl-3 mb-0">
                <li class="mb-2"><strong class="text-black">기업명 : </strong>${company.com_name }</li>
                <li class="mb-2"><strong class="text-black">기업소개 : </strong>${company.com_intro }</li>
                <li class="mb-2"><strong class="text-black">대표자 : </strong>${company.com_man }</li>
                <li class="mb-2"><strong class="text-black">사업자번호 : </strong>${company.com_reg }</li>
                <li class="mb-2"><strong class="text-black">주소 : </strong>${company.com_loc }</li>
                <li class="mb-2"><strong class="text-black">직원수 : </strong>${company.com_imp }</li>
                <li class="mb-2"><strong class="text-black">신입초봉 : </strong>${company.com_sal }</li>
                <li class="mb-2"><strong class="text-black">연락처 : </strong>${company.com_phone }</li>
                <li class="mb-2"><strong class="text-black">이메일 : </strong>${company.com_email }</li>
              </ul>
            </div>

            <div class="bg-light p-3 border rounded">
              <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Share</h3>
              <div class="px-3">
                <a href="https://ko-kr.facebook.com/" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-facebook"></span></a>
                <a href="https://twitter.com/?lang=ko" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-twitter"></span></a>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
    
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/stickyfill.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    
    <script src="js/bootstrap-select.min.js"></script>
    
    <script src="js/custom.js"></script>
</body>
</html>