<%
	if(session.getAttribute("name") == null){
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            background-color: #555; /* Change background color of active link */
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
        
         /* Hero Section Styling */
        .hero {
            background-color: teal;
            padding: 100px 0;
            text-align: center;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 24px;
            color: #666;
        }
        
        .container {
        	margin-top: 40px;
		    display: flex;
		    justify-content: center; /* Aligns children horizontally */
		    align-items: center; /* Aligns children vertically */
		}
		
		.content {
		    display: flex;
		    flex-direction: row; /* Arrange children horizontally */
		    max-width: 1000px; /* Adjust according to your layout */
		}
		
		.text {
		    flex: 1; /* Take up remaining space */
		    padding-right: 20px; /* Adjust spacing */
		}
		
		.image {
		    flex: 0.5; /* Take up remaining space */
		}
		
		/* Optional: Adjust image size */
		.img-responsive {
		    max-width: 100%; /* Ensures the image doesn't exceed its container */
		    height: auto; /* Allows the image to scale proportionally */
		    justify-content: center;
		}
        
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">
        <!-- <img src="logo.png" alt="Logo" width="100"> -->
        <p style="color: white; font-size: 18px; letter-spacing: 1px;">Fit<strong>Genius</strong></p>
    </div>
    <a href="#" class="active">Home</a>
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
    <a href="/FitnessApp/contact.jsp">Contact</a>
     <div class="dropdown activeee">
        <button class="dropbtn"><%= session.getAttribute("name") %></button>
        <div class="dropdown-content">
            <a href="/FitnessApp/logout">Logout</a>
        </div>
    </div>
</div>

<!-- Hero Section -->
<div class="hero">
    <h1>Start Your Free Workout Log Today</h1>
    <p style="color: whitesmoke">Track your progress, set goals, and stay motivated with our easy-to-use workout log. Sign up now!</p>
</div>

<div class="container">
    <div class="content">
        <div class="text">
            <h3 style="font-weight: bold; font-size: 28px; margin-bottom: 23px;">Overview of FreeWorkoutLog</h3>
            <p>
                <strong>FreeWorkoutLog is your complete workout solution.</strong> It's perfect for tracking weight
                lifting, running, walking, cycling, and much more. With over 350 exercises to choose from we have
                something for you. If we don't have your exercise you can add it yourself in seconds.
            </p>
            <br>
            <p>
                <strong>You get what you inspect not what you expect.</strong> Keep up with changes in your body
                to see if your current weight loss plan or workout is effective. You can run reports to get detailed
                statistics on your weight loss and view charts on a specific exercise. You can easily track your
                weight, waist size, body fat, resting heart rate, and much more. Graphic reports let you know what
                is working and what you need to improve on.
            </p>
            <br>
            <p>
                <strong>For Windows, Mac OSX, Linux, and Mobile Devices.</strong> Access your fitness information
                from anywhere in the world that has an internet connection. Our software is web based so there is
                nothing to install on your computer. FreeWorkoutLog is compatible with all major web browsers and
                any mobile device with a full web browser (such as iPod Touch, iPhone, iPad, Android, Blackberry).
            </p>
            <br>
            <p>
                <strong>Your data is safe and secure.</strong> If your computer crashes from a virus or hardware
                failure your data is not compromised. We do daily backups of your data, and our servers are secured
                with 256 bit encryption.
            </p>
        	<br><br><br>
        </div>
        <div class="image" style="justify-content: center;">
            <img class="img-responsive" src="https://www.freeworkoutlog.com/assets/images/muscleman.jpg" alt="Muscle Map">
        </div>
    </div>
</div>

</body>
</html>

