<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Artist_page</title>
<link type="text/css" rel="stylesheet" href="css/frontpage.css"/>
<link rel="shortcut icon" href="favicon.ico">
<link href='http://fonts.googleapis.com/css?family=Courier New:400,300,100,500' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
		<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/salvattore.css">
	<link rel="stylesheet" href="css/style1.css">
	<script src="js/modernizr-2.6.2.min.js"></script>
</head>
<h1>Online Art Gallery</h1>
<body>

 <div class="navbar">
  <a href="frontpage.jsp">Home</a>
  <a href="About_us.jsp">About Us</a>
   <a href="My_profile.jsp">My Profile</a>
   <a href="Exhibition.jsp">Exhibitions</a>
    <a href="gallery_option.jsp">Gallery options</a>
     <a href="upload_paintings.jsp">Upload Paintings</a>
      <a href="frontpage.jsp">Logout</a>
      <a href="#" class="navbar1"><% HttpSession httpSession=request.getSession();
      								String id = request.getParameter("email");
      								httpSession.setAttribute("login1",id );
      								out.println("hii "+httpSession.getAttribute("login1"));
      								String a = (String)httpSession.getAttribute("login1");
      
      
      %></a>  
</div>
<div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns>
        <%
String url = "jdbc:mysql://localhost:3306/";
String dbName = "art_gallery";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String password = "rutuja8079";
String a_id = null;
String query= "select * from painting where email = '" + a + "'";
try {
    Class.forName(driver).newInstance();
    Connection conn = DriverManager.getConnection(url + dbName, userName, password);
	
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(query);
    
    while(rs.next()){
    	%>
    	<div class="item">
        		<div class="animate-box">
	        		<a href=<%= rs.getString("url") %> class="image-popup fh5co-board-img"><img src=<%= rs.getString("url") %> alt="Free HTML5 Bootstrap template"></a>
	        		<div class="image-popup fh5co-desc"><%= rs.getString("title") %>
	        		
	        		</div>
        		</div>
        		</div>
   <%} %>
   <%rs.close();
   st.close();
   conn.close();
   }
   catch (Exception e) {
   }
   %>
        	
        	
        <!-- <<div class="item">
        		<div class="animate-box">
	        		<a href="images/img_3.jpg" class="image-popup fh5co-board-img"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxlVqMSd30Qah-lV4zXbDimmEc0-BYovuJMdDvvAhNIU6l79Nd" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">Optio commodi quod vitae, vel, officiis similique quaerat odit dicta.</div>
        		</div>
        	</div>
              	<div class="item">
        		<div class="animate-box">
	        		<a href="images/img_30.jpg" class="image-popup fh5co-board-img"><img src="images/img_30.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">Adipisci consequuntur ipsa fugit perspiciatis eligendi. Omnis blanditiis, totam placeat.</div>
        		</div>
        	</div> -->
        </div>
        </div>
       </div>
	</div>

	<!-- <footer id="fh5co-footer">
		
		<div class="container">
			<div class="row row-padded">
				<div class="col-md-12 text-center">
					<p class="fh5co-social-icons">
						<a href="#"><i class="icon-twitter"></i></a>
						<a href="#"><i class="icon-facebook"></i></a>
						<a href="#"><i class="icon-instagram"></i></a>
						<a href="#"><i class="icon-dribbble"></i></a>
						<a href="#"><i class="icon-youtube"></i></a>
					</p>
					<p><small>&copy; Hydrogen Free HTML5 Template. All Rights Reserved. <br>Designed by: <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> | Images by: <a href="http://pexels.com" target="_blank">Pexels</a> </small></p>
				</div>
			</div>
		</div>
	</footer>

 --> 
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/salvattore.min.js"></script>
	<script src="js/main1.js"></script>

</body>
</html>