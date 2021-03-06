<!DOCTYPE html>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="/WEB-INF/views/header.jsp" %>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>

body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
    height: 100%;
    color: #777;
    line-height: 1.8;
}

/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
    opacity: 0.7;
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

/* First image (Logo. Full height) */
.bgimg-1 {
    background-image: url("resources/images/e.jpg");
    min-height: 100%;
}

/* Second image (Portfolio) */
.bgimg-2 {
    background-image: url("resources/images/pp.jpg");
    min-height: 400px;
}

/* Third image (Contact) */
.bgimg-3 {
    background-image: url("resources/images/six.jpg");
    min-height: 400px;
}

.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}

#googleMap {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(90%);
    filter: grayscale(90%);
}

/* Turn off parallax scrolling for tablets and mobiles */
@media only screen and (max-width: 1024px) {
    .bgimg-1, .bgimg-2, .bgimg-3 {
        background-attachment: scroll;
    }
}
</style>
<h1>Hello... <%=session.getAttribute("loggedInUser")%></h1>
    <div class="container">
<body>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <ul class="w3-navbar" id="myNavbar">
    <li><a href="back" class="w3-padding-large">HOME</a></li>
    <li><a href="display" class="w3-padding-large">MANAGE PRODUCTS </a></li>
    <li><a href="displaycategory" class="w3-padding-large">MANAGE CATEGORIES</a></li>
    <li><a href="displayuser" class="w3-padding-large">MANAGE USERS</a></li>
      <li class="w3-hide-small w3-right">
    <li><a href="${pageContext.request.contextPath}/Logout" class="w3-padding-large">LOGOUT</a></li>
    <div class="container">
    </li>
  </ul>
</div>
 

<!-- First Parallax Image with Logo Text -->
<div class="bgimg-1 w3-opacity w3-display-container">
  <div class="w3-display-middle" style="white-space:nowrap;">
   
  </div>
</div>

<!-- Container (About Section) -->
<div class="w3-content w3-container w3-padding-64" id="about">
  <h3 class="w3-center">ABOUT US</h3>
  <p class="w3-center"><em>WE ARE GOING TO FORWORD</em></p>
  <p>We have created a fictional "personal" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa
    qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
  <div class="w3-row">
    <div class="w3-col m6 w3-center w3-section">
      <p><b>My Name</b></p><br>
      <img src="https://unsplash.it/235/235?image=91" class="w3-circle" alt="Photo of Me">
    </div>

    <!-- Hide this text on small devices -->
    <div class="w3-col m6 w3-hide-small w3-section">
      <p>Welcome to our website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor
        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>
</div>

<!-- Second Parallax Image with Portfolio Text -->
<div class="bgimg-2 w3-display-container">
  <div class="w3-display-middle">
    <span class="w3-xxlarge w3-text-light-grey w3-wide"></span>
  </div>
</div>

<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-64">
  <h3 class="w3-center">WE WORK</h3>
  <p class="w3-center"><em>Here are some of  latest products.<br> Click on the images to make them bigger</em></p><br>

  <!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
      <img src= "resources/images/four.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>

    <div class="w3-col m3">
      <img src="resources/images/motorola-moto-x-style.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>

    <div class="w3-col m3">
      <img src="resources/images/motorola-moto-x-2nd-gen.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>

    <div class="w3-col m3">
      <img src="resources/images/s-l225.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>
  </div>

  <div class="w3-row-padding w3-center w3-section">
    <div class="w3-col m3">
      <img src= "resources/images/watch (2).jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>

    <div class="w3-col m3">
     <img src= "resources/images/all.jpg" style=width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>

    <div class="w3-col m3">
      <img src= "resources/images/watch111.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
      
    </div>

    <div class="w3-col m3">
      <img src="resources/images/watch44.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity">
    </div>
  </div>
</div>

<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-closebtn w3-hover-red w3-text-white w3-xxxlarge w3-container w3-display-topright">�</span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" style="max-width:100%">
  </div>
</div>

<!-- Third Parallax Image with Portfolio Text -->
<div class="bgimg-3 w3-display-container">
  <div class="w3-display-middle">
     <span class="w3-xxlarge w3-text-light-grey w3-wide"></span>
  </div>
</div>

<!-- Container (Contact Section) -->
<div class="w3-content w3-container w3-padding-64">
  <h3 class="w3-center">CONTACT US</h3>
  <p class="w3-center"><em></em></p>

  <div class="w3-row w3-padding-32 w3-section">
    <div class="w3-col m4 w3-container">
      <!-- Add Google Maps -->
      <div id="googleMap" class="w3-round-large"></div>
    </div>
    <div class="w3-col m8 w3-container w3-section">
      <div class="w3-large w3-margin-bottom">
        <i class="fa fa-map-marker w3-hover-text-black" style="width:30px"></i> Hydrabad, AP<br>
        <i class="fa fa-phone w3-hover-text-black" style="width:30px"></i> Phone: +91 9676707111<br>
        <i class="fa fa-envelope w3-hover-text-black" style="width:30px"> </i> Email: ravi@email.com<br>
      </div>
      <p></p>
      <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
        <div class="w3-half">
          <input class="w3-input w3-border w3-hover-light-grey" type="text" placeholder="Name">
        </div>
        <div class="w3-half">
          <input class="w3-input w3-border w3-hover-light-grey" type="text" placeholder="Email">
        </div>
      </div>
      <input class="w3-input w3-border w3-hover-light-grey" type="text" placeholder="Comment">
      <button class="w3-btn w3-section w3-right">SEND</button>
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="w3-center w3-dark-grey w3-padding-48 w3-hover-black">
  <p>Powered by <a href="http://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></p>
</footer>
 
<!-- Add Google Maps -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
var myCenter = new google.maps.LatLng(41.878114, -87.629798);

function initialize() {
var mapProp = {
  center: myCenter,
  zoom: 12,
  scrollwheel: false,
  draggable: false,
  mapTypeId: google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position: myCenter,
});

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
}

// Change style of navbar on scroll
window.onscroll = function() {myFunction()};
function myFunction() {
    var navbar = document.getElementById("myNavbar");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        navbar.className = "w3-navbar" + " w3-card-2" + " w3-animate-top" + " w3-white";
    } else {
        navbar.className = navbar.className.replace(" w3-card-2 w3-animate-top w3-white", "");
    }
}
</script>

</body>
</html>

