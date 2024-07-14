
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FitGenius - Frequently Asked Questions</title>
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
        
		/* Style the dropdown button */
		.dropbtn {
		  background-color: #3498db;
		  color: white;
		  padding: 12px;
		  font-size: 16px;
		  border: none;
		  cursor: pointer;
		}
		
		/* Style the accordion buttons */
		.accordion-btn {
		  background-color: #3498db;
		  color: white;
		  padding: 12px;
		  width: 100%;
		  text-align: left;
		  border: none;
		  cursor: pointer;
		  outline: none;
		}
		
		/* Style the accordion content */
		.accordion {
		  margin-left: 34px;
		  margin-right: 34px;
		}
		.accordion-content {
		  display: none;
		  padding: 0 18px;
		  overflow: hidden;
		  background-color: #f9f9f9;
		}
		
		/* Style the active (open) accordion content */
		.accordion-item.active .accordion-content {
		  display: block;
		}
		
		/* Style the accordion items */
		.accordion-item {
		  margin-bottom: 10px;
		}
		
		/* Style the accordion items on hover */
		.accordion-item:hover {
		  background-color: #f0f0f0;
		}
       
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">
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
    <a href="#" class="active">FAQ</a>
    <a href="/FitnessApp/contact.jsp">Contact</a>
    <div class="dropdown activeee">
        <button class="dropbtn"><%= session.getAttribute("name") %></button>
        <div class="dropdown-content">
            <a href="/FitnessApp/logout">Logout</a>
        </div>
    </div>
</div>

<!-- Hero Section -->
<h3 style="margin: 30px; font-size: 30px;">Frequently Asked Questions</h3>

<div class="accordion">
  <div class="accordion-item">
    <button class="accordion-btn">What are the benefits of regular exercise?</button>
    <div class="accordion-content">
      <p>Regular exercise has numerous benefits including improved cardiovascular health, weight management, increased muscle strength and endurance, better mood, and reduced risk of chronic diseases such as heart disease and diabetes.</p>
    </div>
  </div>
  
  <div class="accordion-item">
    <button class="accordion-btn">How often should I exercise?</button>
    <div class="accordion-content">
      <p>The frequency of exercise depends on your fitness goals and current level of fitness. Generally, adults should aim for at least 150 minutes of moderate-intensity aerobic activity or 75 minutes of vigorous-intensity aerobic activity per week, along with muscle-strengthening activities on two or more days per week.</p>
    </div>
  </div>
  
  <div class="accordion-item">
    <button class="accordion-btn">What types of exercises should I do?</button>
    <div class="accordion-content">
      <p>It's important to include a variety of exercises in your routine to target different muscle groups and aspects of fitness. This may include aerobic exercises such as walking, jogging, swimming, or cycling, as well as strength training exercises using weights or resistance bands, and flexibility exercises such as yoga or stretching.</p>
    </div>
  </div>
  
  
<!--   Sure, here are some frequently asked questions regarding exercise:


8. How can I stay motivated to exercise regularly?
9. Can I target fat loss in specific areas of my body?
10. How do I know if I'm overtraining?
11. Should I stretch before or after a workout?
12. Can I build muscle without lifting weights?
13. What's the difference between sets and reps?
14. How do I find the right balance between cardio and strength training?
15. Is it okay to exercise when I'm sore?
16. What are some effective exercises I can do at home without any equipment?
17. How can I improve my flexibility?
18. Will exercising help with stress and anxiety?
19. How do I choose the right workout program for my fitness goals?
20. What are the benefits of cross-training? -->
  
  <div class="accordion-item">
    <button class="accordion-btn">What are the best exercises for weight loss?</button>
    <div class="accordion-content">
      <p>It's important to include a variety of exercises in your routine to target different muscle groups and aspects of fitness. This may include aerobic exercises such as walking, jogging, swimming, or cycling, as well as strength training exercises using weights or resistance bands, and flexibility exercises such as yoga or stretching.</p>
    </div>
  </div>
  <div class="accordion-item">
    <button class="accordion-btn">How many days a week should I work out?</button>
    <div class="accordion-content">
      <p>It's important to include a variety of exercises in your routine to target different muscle groups and aspects of fitness. This may include aerobic exercises such as walking, jogging, swimming, or cycling, as well as strength training exercises using weights or resistance bands, and flexibility exercises such as yoga or stretching.</p>
    </div>
  </div>
  <div class="accordion-item">
    <button class="accordion-btn">Should I focus on cardio or strength training?</button>
    <div class="accordion-content">
      <p>It's important to include a variety of exercises in your routine to target different muscle groups and aspects of fitness. This may include aerobic exercises such as walking, jogging, swimming, or cycling, as well as strength training exercises using weights or resistance bands, and flexibility exercises such as yoga or stretching.</p>
    </div>
  </div>
  <div class="accordion-item">
    <button class="accordion-btn">How do I prevent injuries while exercising?</button>
    <div class="accordion-content">
      <p>It's important to include a variety of exercises in your routine to target different muscle groups and aspects of fitness. This may include aerobic exercises such as walking, jogging, swimming, or cycling, as well as strength training exercises using weights or resistance bands, and flexibility exercises such as yoga or stretching.</p>
    </div>
  </div>
  <div class="accordion-item">
    <button class="accordion-btn">How do I prevent injuries while exercising?</button>
    <div class="accordion-content">
      <p>It's important to include a variety of exercises in your routine to target different muscle groups and aspects of fitness. This may include aerobic exercises such as walking, jogging, swimming, or cycling, as well as strength training exercises using weights or resistance bands, and flexibility exercises such as yoga or stretching.</p>
    </div>
  </div>
  <div class="accordion-item">
    <button class="accordion-btn">How do I prevent injuries while exercising?</button>
    <div class="accordion-content">
      <p>It's important to include a variety of exercises in your routine to target different muscle groups and aspects of fitness. This may include aerobic exercises such as walking, jogging, swimming, or cycling, as well as strength training exercises using weights or resistance bands, and flexibility exercises such as yoga or stretching.</p>
    </div>
  </div>
  <div class="accordion-item">
    <button class="accordion-btn">Is it better to exercise in the morning or evening?</button>
    <div class="accordion-content">
      <p>It's important to include a variety of exercises in your routine to target different muscle groups and aspects of fitness. This may include aerobic exercises such as walking, jogging, swimming, or cycling, as well as strength training exercises using weights or resistance bands, and flexibility exercises such as yoga or stretching.</p>
    </div>
  </div>
  <div class="accordion-item">
    <button class="accordion-btn">How long should my workouts be?</button>
    <div class="accordion-content">
      <p>It's important to include a variety of exercises in your routine to target different muscle groups and aspects of fitness. This may include aerobic exercises such as walking, jogging, swimming, or cycling, as well as strength training exercises using weights or resistance bands, and flexibility exercises such as yoga or stretching.</p>
    </div>
  </div>
  <div class="accordion-item">
    <button class="accordion-btn">What should I eat before and after a workout?</button>
    <div class="accordion-content">
      <p>It's important to include a variety of exercises in your routine to target different muscle groups and aspects of fitness. This may include aerobic exercises such as walking, jogging, swimming, or cycling, as well as strength training exercises using weights or resistance bands, and flexibility exercises such as yoga or stretching.</p>
    </div>
  </div>
</div>
<br><br><br><br>
<script>
  // JavaScript for accordion functionality
  var accordionBtns = document.querySelectorAll('.accordion-btn');
  accordionBtns.forEach(function(btn) {
    btn.addEventListener('click', function() {
      this.parentNode.classList.toggle('active');
    });
  });
</script>


</body>
</html>
