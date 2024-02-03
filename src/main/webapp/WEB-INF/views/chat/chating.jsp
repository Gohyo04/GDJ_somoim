<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>chat</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="/resources/assets/css/chat.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
	<c:import url="../temps/head_css.jsp"></c:import>
</head>

<body>
	<c:import url="../temps/header.jsp"></c:import>
	<span class="my-5"></span>
	<div class="container">
		<div class="row clearfix">
			<div class="col-lg-12">
				<div class="card chat-app">
					<div id="plist" class="people-list">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-search"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="Search...">
						</div>
						<ul class="list-unstyled chat-list mt-2 mb-0">
							<li class="clearfix">
								<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="avatar">
								<div class="about">
									<div class="name">Vincent Porter</div>
									<div class="status"> <i class="fa fa-circle offline"></i> left 7 mins ago </div>
								</div>
							</li>
							<li class="clearfix active">
								<img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="avatar">
								<div class="about">
									<div class="name">Aiden Chavez</div>
									<div class="status"> <i class="fa fa-circle online"></i> online </div>
								</div>
							</li>
							<li class="clearfix">
								<img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="avatar">
								<div class="about">
									<div class="name">Mike Thomas</div>
									<div class="status"> <i class="fa fa-circle online"></i> online </div>
								</div>
							</li>
							<li class="clearfix">
								<img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="avatar">
								<div class="about">
									<div class="name">Christian Kelly</div>
									<div class="status"> <i class="fa fa-circle offline"></i> left 10 hours ago </div>
								</div>
							</li>
							<li class="clearfix">
								<img src="https://bootdey.com/img/Content/avatar/avatar8.png" alt="avatar">
								<div class="about">
									<div class="name">Monica Ward</div>
									<div class="status"> <i class="fa fa-circle online"></i> online </div>
								</div>
							</li>
							<li class="clearfix">
								<img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="avatar">
								<div class="about">
									<div class="name">Dean Henry</div>
									<div class="status"> <i class="fa fa-circle offline"></i> offline since Oct 28
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="chat">
						<div class="chat-header clearfix">
							<div class="row">
								<div class="col-lg-6">
									<a href="javascript:void(0);" data-toggle="modal" data-target="#view_info">
										<img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="avatar">
									</a>
									<div class="chat-about">
										<h6 class="m-b-0">Aiden Chavez</h6>
										<small>Last seen: 2 hours ago</small>
									</div>
								</div>
								<div class="col-lg-6 hidden-sm text-right">
									<a href="javascript:void(0);" class="btn btn-outline-secondary"><i
											class="fa fa-camera"></i></a>
									<a href="javascript:void(0);" class="btn btn-outline-primary"><i
											class="fa fa-image"></i></a>
									<a href="javascript:void(0);" class="btn btn-outline-info"><i
											class="fa fa-cogs"></i></a>
									<a href="javascript:void(0);" class="btn btn-outline-warning"><i
											class="fa fa-question"></i></a>
								</div>
							</div>
						</div>
						<div class="chat-history">
							<ul class="m-b-0">
								<li class="clearfix">
									<div class="message-data text-right">
										<span class="message-data-time">10:10 AM, Today</span>
										<img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="avatar">
									</div>
									<div class="message other-message float-right"> Hi Aiden, how are you? How is the
										project coming along? </div>
								</li>
								<li class="clearfix">
									<div class="message-data">
										<span class="message-data-time">10:12 AM, Today</span>
									</div>
									<div class="message my-message">Are we meeting today?</div>
								</li>
								<li class="clearfix">
									<div class="message-data">
										<span class="message-data-time">10:15 AM, Today</span>
									</div>
									<div class="message my-message">Project has been already finished and I have results
										to show you.</div>
								</li>
							</ul>
						</div>
						<div class="chat-message clearfix">
							<div class="input-group mb-0">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-send"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Enter text here...">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="../temps/footer.jsp"></c:import>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript"></script>
</body>

</html>