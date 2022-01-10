<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" href="css/Edit.css">
	<link rel="stylesheet" href="css/EditPage.css">
</head>
	<body>
		<div class="form-style-10">
			<h1>Add New Customer!</h1>
			<form name="f1" action="AdminServiceSave.jsp">
    			<div class="section"><span>1</span>Name & Email</div>
    			<div class="inner-wrap">
        			<label>Full Name <input type="text" name="name" /></label>
        			<label>Email <input type="email" name="email" /></label>
    			</div>
    			
    			<div class="section"><span>2</span>Service & Tech Specs </div>
    			<div class="inner-wrap">
    				<label for="sel1">Service Category:</label>
      				<select name="service" class="form-control" id="sel1" required>
	        			<option value="">-----</option>
	        			<option value="Software Service">Software Service</option>
	        			<option value="Analysis Service">Analysis Service</option>
	        			<option value="Telesales Service">Telesales Service</option>
						<option value="Service4">Service 4</option>
      				</select>
    				<label>Specs <textarea name="details"></textarea></label>
    			</div>
    			<div class="button-section">
     				<input type="submit" value="ADD" />
    			</div>
			</form>
		</div>	
	</body>
</html>