<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>FitGenius - Exercise Guide</title>
    <style>
        /* Basic CSS Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
        }

        /* Navigation Bar Styling */
        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            align-items: center;
            padding: 10px;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
			margin-left: 10px;
            margin-right: 10px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
            border-radius: 10px;
        }

        /* Logo Styling */
        .logo {
            margin-right: auto;
            margin-left: 15px;
        }

        /* Dropdown Menu Styling */
        .dropdown {
            float: left;
            overflow: hidden;
            border-radius: 10px;
        }

        .dropdown .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 20px;
            background-color: inherit;
            margin: 0;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            width: 200px;
            z-index: 1;
        }

        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .active {
            background-color: #555; 
            border-radius: 10px;
        }
        
        .activeee {
            background-color: teal; /* Change background color of active link */
            border-radius: 10px;
        }

        .activee:hover {
            background-color: #ddd;
            color: black;
        }

        .active:hover {
            background-color: #555; /* Change hover background color of active link */
        }

        /* Style for section */
        .section {
            padding: 40px 0;
        }

        .section-xs {
            padding: 50px 0;
        }

        .section-bottom {
            margin-bottom: 40px;
        }

        /* Style for container */
        .container {
            width: 100%;
            margin: 0 auto;
            padding: 0 15px;
        }

        /* Style for form */
        .form-bg {
            background-color: #f5f5f5;
            padding: 20px;
            border-radius: 5px;
        }

        /* Style for input fields */
        .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* Style for buttons */
        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 4px;
        }

        .btn-primary {
            background-color: #007bff;
            color: #fff;
        }

        /* Style for headings */
        .title-md {
            font-size: 24px;
            margin-bottom: 30px;
        }

        /* Style for text */
        .text-theme {
            color: #333;
        }

        /* Style for list */
        .list-unstyled {
            list-style: none;
            padding-left: 0;
        }

        /* Style for list items */
        .list-md li {
            margin-bottom: 10px;
        }

        /* Style for icons */
        .fa {
            margin-right: 5px;
        }

        /* Style for offset */
        .col-md-offset-1 {
            margin-left: 8.333333%;
        }

        /* Style for margin */
        .mt-20 {
            margin-top: 20px;
        }

        /* Style for horizontal rule */
        .hr-left {
            border-top: 2px solid #007bff;
            width: 200px;
        }

        /* Popup box container */
        .popup-container {
            display: none; /* Hide popup by default */
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            z-index: 9999; /* Ensure popup appears above other elements */
        }

        /* Popup box content */
        .popup-content {
            background-color: #fff;
            width: 300px;
            padding: 20px;
            border-radius: 5px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        /* Close button */
        .close-btn {
            position: absolute;
            top: 5px;
            right: 10px;
            cursor: pointer;
        }

        /* Responsive styling for columns */
        @media (min-width: 768px) {
            .col-md-5 {
                width: 41.66666667%;
                float: left;
            }
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">
        <!-- <img src="logo.png" alt="Logo" width="100"> -->
        <p style="color: white; font-size: 18px; letter-spacing: 1px;">Fit<strong>Genius</strong></p>
    </div>
    <a href="/FitnessApp/index.jsp">Home</a>
    <div class="dropdown">
        <button class="dropbtn activee">Exercise Guide</button>
        <div class="dropdown-content">
            <a href="exercise.jsp?exercise=abs">Abs (Rectus Abdominis)</a>
            <a href="exercise.jsp?exercise=biceps">Biceps (Biceps Brachii)</a>
            <a href="exercise.jsp?exercise=calves">Calves (Gastrocnemius)</a>
            <a href="exercise.jsp?exercise=chest">Chest (pectoralis)</a>
            <a href="exercise.jsp?exercise=glutes">Glutes (gluteus maximus and medius)</a>
            <a href="exercise.jsp?exercise=hamstrings">Hamstrings (biceps femoris)</a>
            <a href="exercise.jsp?exercise=lats">Lats (latissimus dorsi)</a>
            <a href="exercise.jsp?exercise=lower-back">Lower Back (erector spinae)</a>
            <a href="exercise.jsp?exercise=middle-back">Middle Back (rhomboids)</a>
            <a href="exercise.jsp?exercise=neck">Neck</a>
        </div>
    </div>
    <a href="/FitnessApp/faq.jsp">FAQ</a>
    <a class="active">Contact</a>
    <div class="dropdown activeee">
        <button class="dropbtn"><%= session.getAttribute("name") %></button>
        <div class="dropdown-content">
            <a href="/FitnessApp/logout">Logout</a>
        </div>
    </div>
</div>

<div class="section section-xs section-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <h3 class="title-md text-theme hr-left">Contact Form</h3>
                <form class="form-bg text-theme" id="contact" action="mailProcess.jsp" method="post" novalidate="novalidate">
                    <div class="form-group">
                        <label for="Name">Name</label>
                        <input type="text" class="form-control" style="width: 100%;" data-val="true" data-val-required="The Name field is required." id="Name" name="Name" value="" fdprocessedid="hvuqtq">
                        <span class="text-danger field-validation-valid" data-valmsg-for="Name" data-valmsg-replace="true"></span>
                    </div>
                    <div class="form-group">
                        <label for="Email">Email</label>
                        <input type="text" class="form-control" style="width: 100%;" data-val="true" data-val-email="The Email Address field is not a valid e-mail address." data-val-required="The Email Address field is required." id="Email" name="Email" value="" fdprocessedid="kb1t2e">
                        <span class="text-danger field-validation-valid" data-valmsg-for="Email" data-valmsg-replace="true"></span>
                    </div>
                    <div class="form-group">
                        <label for="Subject">Subject</label>
                        <input type="text" class="form-control" style="width: 100%;" data-val="true" data-val-required="The Subject field is required." id="Subject" name="Subject" value="" fdprocessedid="o7n70q">
                        <span class="text-danger field-validation-valid" data-valmsg-for="Subject" data-valmsg-replace="true"></span>
                    </div>
                    <div class="form-group text-theme">
                        <label for="Message">Message</label>
                        <textarea class="form-control" cols="20" rows="6" data-val="true" data-val-required="The Message field is required." id="Message" name="Message"></textarea>
                        <span class="text-danger field-validation-valid" data-valmsg-for="Message" data-valmsg-replace="true"></span>
                    </div>
                    <div class="form-group" style="display: none;">
                        <label for="IgnoreField">Field</label>
                        <input type="text" placeholder="Leave blank" class="form-control" style="width: 100%;" id="IgnoreField" name="IgnoreField" value="">
                    </div>
                    <button type="submit" class="btn btn-primary text-theme mt-20" fdprocessedid="6rhdvt"><i class="fa fa-paper-plane"></i>Send Message</button>
                </form>
            </div>
            <div class="col-md-5 col-md-offset-1">
                <h3 class="title-md text-theme hr-left">Get in touch</h3>
                <p class="text-theme lead">We'd love to hear from you. Drop us a line if you have any questions.</p>
                <h3 class="title-md text-theme">Contact Info</h3>
                <ul class="list-unstyled list-md text-theme">
                    <li><i class="fa fa-envelope fa-box"></i><a href="mailto:mail@freeworkoutlog.com">mail@freeworkoutlog.com</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- Popup container onsubmit="showPopup(); return false;" -->
<div id="popupContainer" class="popup-container">
    <!-- Popup content -->
    <div class="popup-content">
        <span class="close-btn" onclick="hidePopup()">&times;</span>
        <p>Message submitted successfully!</p>
    </div>
</div>

<script>
    // Function to show the popup
    function showPopup() {
        document.getElementById("popupContainer").style.display = "block";
    }

    // Function to hide the popup
    function hidePopup() {
        document.getElementById("popupContainer").style.display = "none";
    }
</script>

</body>
</html>
