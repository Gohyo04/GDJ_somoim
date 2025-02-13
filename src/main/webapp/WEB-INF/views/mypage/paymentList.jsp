<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Somoim</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- CSS 임포트 -->
<c:import url="../temps/head_css.jsp"></c:import>
<!-- 내비게이터 import -->
<c:import url="../temps/header.jsp"></c:import>
</head>
<body>
	<section class="dashboard section bg-light">
		<div class="container mx-7">
			<div class="row">
				<!-- Sidebar -->
				<c:import url="./mypage_nav.jsp"></c:import>

				<!-- Main content -->
				<div class="col-lg-10 col-md-8 col-12">
					<div class="row pricing-table" style="height: 100%;">
						<div class="container bg-white"
							style="border-radius: 10px; margin-left: 15px;">
							<div class="row">
								<!-- 안에 내용 수정해서 사용하세요 -->
								<div class="col" style="width: 100%;">
									<div class="section-title" style="margin-bottom: 10px">
										<h2 class="wow fadeInUp" data-wow-delay=".4s"
											style="font-size: 22px; padding-bottom: 10px; margin-bottom: 8px; height: 45px">결제내역</h2>
									</div>

								</div>
							</div>
							<div class="row mb-3">
								<div style="padding-left: 20px; margin-top: 2em">
									<h4 style="margin-bottom: 0.5em;">내 구독권</h4>
									<div style="width: 30%; border: 1px solid black; border-radius: 10px;">
										<ul style="margin: 1em;">
											<li>구독 기간</li>
											<li>1990.5.1. ~ 2004.5.1.</li>
										</ul>
									</div>
									<table class="table" style="width: 90%; margin-top: 1em">
									<thead>
										<tr>
											<th>주문번호</th>
											<th>결제금액</th>
											<th>구매상품</th>
											<th>결제수단</th>
											<th>결제날짜</th>
										</tr>
									</thead>
									<tr>
										<td>d</td>
										<td>d</td>
										<td>d</td>
										<td>d</td>
										<td>d</td>
									</tr>
									<tr>
										<td>d</td>
										<td>d</td>
										<td>d</td>
										<td>d</td>
										<td>d</td>
									</tr>
									<tr>
										<td>d</td>
										<td>d</td>
										<td>d</td>
										<td>d</td>
										<td>d</td>
									</tr>
									<tr>
										<td>d</td>
										<td>d</td>
										<td>d</td>
										<td>d</td>
										<td>d</td>
									</tr>
								</table>
								</div>
							</div>
							<!-- Main content goes here -->
						</div>
					</div>
				</div>
	</section>

	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../temps/footer.jsp"></c:import>
	<script src="/resources/js/payment/payment.js"></script>
</body>
</html>