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
				<input type="text" class="form-control" id="destination" name="destination" placeholder="Your Destination">
			</div>
	</div>
  <div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="datepicker1">Departure Date:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="datepicker1" name="datepicker1" placeholder="From(year/month/day)">
			</div>
	</div>
	<div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="datepicker2">Arrival Date:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<input type="text" class="form-control" id="datepicker2" name="datepicker2" placeholder="To(year/month/day)">
			</div>
	</div>
	<div class="form-group">
		<label class="control-label col-lg-6 col-md-6 col-sm-6" for="availability">Status:</label>
			<div class="col-lg-6 col-md-6 col-sm-6">
        <select name="availability">
            <option value="available" id="availability">Available</option>
            <option value="unavailable" id="availability">Unavailable</option>
            <option value="partly_available" id="availability">Partly Available</option>
          </select>
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
