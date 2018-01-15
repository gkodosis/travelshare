<%
  if (session == null)
  {
    %><jsp:forward page="ts_login.jsp" /><%
  }else {


%>
<form class="form-horizontal" method="POST" action="servlet/PostController">
	<input type="hidden" id="username" name="username" value="<%= user.getUsername() %>">
	<div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="inputDst">Destination:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="inputDst" name="destination" placeholder="Your Destination">
			</div>
	</div>
  <div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="datepicker1">Date:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="datepicker1" name="datepicker1" placeholder="From">
			</div>
	</div>
	<div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="datepicker2">Date:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="datepicker2" name="datepicker2" placeholder="To">
			</div>
	</div>
	<div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="luggage">Luggage:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="luggage" name="luggage" placeholder="How much free space">
			</div>
	</div>
	<div class="form-group">
		<div class="col-lg-6 col-md-6 col-sm-6">
			<button type="submit" class="btn btn-default btn-lg btn-custom">Post</button>
		</div>
	</div>
	</form>
<%
}
%>
