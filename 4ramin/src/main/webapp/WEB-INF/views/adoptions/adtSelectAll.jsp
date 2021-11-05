<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<section class="site-section">
			<div class="container">

				<div class="row mb-5 justify-content-center">
					<div class="col-md-7 text-center">
						<h2 class="section-title mb-2">최근 등록된 채용공고</h2>
					</div>
				</div>

				<ul class="job-listings mb-5">
				
				<c:forEach items="${adoptions }" var="adt">
					<li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
						<a href="#"></a>
						<!--여기에 공고 링크-->
						<div class="job-listing-logo">
							<img src="images/job_logo_1.jpg" alt="Free Website Template by Free-Template.co"
								class="img-fluid">
						</div>

						<div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
							<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
								<h2>${adt.title }</h2>
								<strong>${adt.career }</strong>
							</div>
							<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
								<span class="icon-room"></span> 위치
							</div>
							<div class="job-listing-meta" align="right">
								<span class="badge badge-danger">D-101</span><br>
								<span class="badge badge-primary">${adt.sal_type } ${adt.sal_howmuch }원</span><br>
								<span class="badge badge-secondary">${adt.career }</span>
							</div>
						</div>
						</li>
						</c:forEach>
	


				</ul>

				<div class="row pagination-wrap">
					<div class="col-md-6 text-center text-md-left mb-4 mb-md-0">
						<span>${cnt }개 결과 중 00개 표시</span>
					</div>
					<div class="col-md-6 text-center text-md-right">
						<div class="custom-pagination ml-auto">
							<a href="#" class="prev">이전</a>
							<div class="d-inline-block">
								<a href="#" class="active">1</a>
								<a href="#">2</a>
								<a href="#">3</a>
								<a href="#">4</a>
							</div>
							<a href="#" class="next">다음</a>
						</div>
					</div>
				</div>

			</div>
		</section>
</body>
<script type="text/javascript">

console.log(${adt.title});
console.log(${adt.salType});
</script>
</html>