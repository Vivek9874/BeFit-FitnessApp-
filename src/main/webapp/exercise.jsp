<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FitGenius - Exercise Guide</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
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
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Logo Styling */
        .logo {
            margin-right: auto;
        }

        /* Dropdown Menu Styling */
        .dropdown {
            float: left;
            overflow: hidden;
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
        }

        .active:hover {
            background-color: #555; /* Change hover background color of active link */
        }
        
		.activee:hover {
            background-color: #ddd;
            color: black;
        }
        
</style>
<body>

<div class="navbar">
    <div class="logo">
        <p style="color: white; font-size: 18px; letter-spacing: 1px;">Fit<strong>Genius</strong></p>
    </div>
    <a href="/FitnessApp/index.html">Home</a>
    <div class="dropdown active">
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
    <a href="faq.html">FAQ</a>
    <a href="contact.html">Contact</a>
</div>

<div class="video-container">
    Video will be loaded here
    <% String exercise = request.getParameter("exercise");
       String videoURL = "";
       String title = "";
       if (exercise != null) {
           switch (exercise) {
               case "abs":
            	   title = "abs";
                   videoURL = "https://www.youtube.com/embed/jZhKPgjb0yg";
                   description = "Sure! An abs workout typically focuses on strengthening and toning the muscles of the abdominal area, primarily targeting the rectus abdominis, obliques, and transverse abdominis. Here's a brief description of an abs workout: 
                	   1. Basic Crunches: Lie on your back with knees bent and feet flat on the floor. Place your hands behind your head or across your chest. Contract your abs to lift your shoulders off the floor, keeping your lower back pressed into the ground. Lower back down with control.
                	   2. Leg Raises: Lie on your back with legs straight. Keep your lower back pressed into the ground as you lift your legs upward until they form a 90-degree angle with your torso. Slowly lower them back down without letting them touch the ground.
                	   3. Planks: Start in a push-up position, then bend your elbows to rest your weight on your forearms. Keep your body in a straight line from head to heels, engaging your core muscles. Hold this position for as long as you can.
                	   4. Russian Twists: Sit on the floor with knees bent and feet lifted off the ground. Lean back slightly and clasp your hands together. Twist your torso to the right, then to the left, while keeping your core engaged.
                	   5. Bicycle Crunches: Lie on your back with knees bent and hands behind your head. Lift your shoulders off the ground and bring your right elbow towards your left knee as you extend your right leg. Alternate sides in a pedaling motion.
                	   6. Mountain Climbers: Start in a plank position, then bring one knee towards your chest while keeping your body in a straight line. Quickly switch legs, alternating back and forth as if you're climbing a mountain.
                	   7. Reverse Crunches: Lie on your back with knees bent and feet lifted off the ground. Press your lower back into the floor as you lift your hips off the ground, bringing your knees towards your chest. Lower back down with control.
                	   
                	   Remember to focus on proper form, breathe consistently throughout each exercise, and listen to your body. Gradually increase the intensity and duration of your workouts as your strength improves. Additionally, incorporating a balanced diet and overall fitness routine can help you achieve your desired results.";
                   break;
               case "biceps":
            	   title = "biceps";
                   videoURL = "https://www.youtube.com/embed/Zjv0tiMjkJU";
                   description = "";
                   break;
               case "calves":
            	   title = "Calves";
                   videoURL = "https://www.youtube.com/embed/2zX-NCJJbW0";
                   description = "";
                   break;
               case "chest":
            	   title = "Chest";
                   videoURL = "https://www.youtube.com/embed/xtEFVrwZFGU";
                   description = "";
                   break;
               case "glutes":
            	   title = "Glutes";
                   videoURL = "https://www.youtube.com/embed/eFtbf720CQY";
                   description = "";
                   break;
               case "hamstrings":
            	   title = "Hamstrings";
                   videoURL = "https://www.youtube.com/embed/7Jt3CMmUcbM";
                   description = "";
                   break;
               case "lats":
            	   title = "Lats";
                   videoURL = "https://www.youtube.com/embed/1AGOuvpAfAg";
                   description = "";
                   break;
               case "lower-back":
            	   title = "Lower Back";
                   videoURL = "https://www.youtube.com/embed/wxLmD5nsK_M";
                   description = "";
                   break;
               case "middle-back":
            	   title = "Middle Back";
                   videoURL = "https://www.youtube.com/embed/1RGRP-OHUF0";
                   description = "";
                   break;
               case "neck":
            	   title = "Neck";
                   videoURL = "https://www.youtube.com/embed/Dq-Fj-vFfYE";
                   description = "";
                   break;    
           }
       }
    %>
    <strong><%=title%></strong>
    <iframe width="560" height="315" src="<%=videoURL%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	<p><%=description%></p>
</div>

</body>
</html>
 --%>
 
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FitGenius - Exercise Guide</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
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

        .active:hover {
            background-color: #555; /* Change hover background color of active link */
        }
        
        .activee:hover {
            background-color: #ddd;
            color: black;
        }
        
        .video-container {
            margin-top: 20px;
            text-align: center;
        }
        
        .video-description {
            margin-top: 20px;
            margin-bottom: 30px;
            text-align: left;
            padding: 0 20px;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">
        <p style="color: white; font-size: 18px; letter-spacing: 1px;">Fit<strong>Genius</strong></p>
    </div>
    <a href="/FitnessApp/index.jsp">Home</a>
    <div class="dropdown active">
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
    <a href="faq.jsp">FAQ</a>
    <a href="contact.jsp">Contact</a>
    <div class="dropdown activeee">
        <button class="dropbtn"><%= session.getAttribute("name") %></button>
        <div class="dropdown-content">
            <a href="/FitnessApp/logout">Logout</a>
        </div>
    </div>
</div>

<div class="video-container">
    <%
        String exercise = request.getParameter("exercise");
        String videoURL = "";
        String title = "";
        String description = "";

        if (exercise != null) {
            switch (exercise) {
                case "abs":
                    title = "Abs (Rectus Abdominis)";
                    videoURL = "https://www.youtube.com/embed/jZhKPgjb0yg";
                    description = "An abs workout typically focuses on strengthening and toning the muscles of the abdominal area, primarily targeting the rectus abdominis, obliques, and transverse abdominis. Here's a brief description of an abs workout:<br><br>" +
                            "1. Basic Crunches:<br>" +
                            "&emsp;- Lie on your back with knees bent and feet flat on the floor.<br>" +
                            "&emsp;- Place your hands behind your head or across your chest.<br>" +
                            "&emsp;- Contract your abs to lift your shoulders off the floor, keeping your lower back pressed into the ground.<br>" +
                            "&emsp;- Lower back down with control.<br><br>" +
                            "2. Leg Raises:<br>" +
                            "&emsp;- Lie on your back with legs straight.<br>" +
                            "&emsp;- Keep your lower back pressed into the ground as you lift your legs upward until they form a 90-degree angle with your torso.<br>" +
                            "&emsp;- Slowly lower them back down without letting them touch the ground.<br><br>" +
                            "3. Planks:<br>" +
                            "&emsp;- Start in a push-up position, then bend your elbows to rest your weight on your forearms.<br>" +
                            "&emsp;- Keep your body in a straight line from head to heels, engaging your core muscles.<br>" +
                            "&emsp;- Hold this position for as long as you can.<br><br>" +
                            "4. Russian Twists:<br>" +
                            "&emsp;- Sit on the floor with knees bent and feet lifted off the ground.<br>" +
                            "&emsp;- Lean back slightly and clasp your hands together.<br>" +
                            "&emsp;- Twist your torso to the right, then to the left, while keeping your core engaged.<br><br>" +
                            "5. Bicycle Crunches:<br>" +
                            "&emsp;- Lie on your back with knees bent and hands behind your head.<br>" +
                            "&emsp;- Lift your shoulders off the ground and bring your right elbow towards your left knee as you extend your right leg.<br>" +
                            "&emsp;- Alternate sides in a pedaling motion.<br><br>" +
                            "6. Mountain Climbers:<br>" +
                            "&emsp;- Start in a plank position, then bring one knee towards your chest while keeping your body in a straight line.<br>" +
                            "&emsp;- Quickly switch legs, alternating back and forth as if you're climbing a mountain.<br><br>" +
                            "7. Reverse Crunches:<br>" +
                            "&emsp;- Lie on your back with knees bent and feet lifted off the ground.<br>" +
                            "&emsp;- Press your lower back into the floor as you lift your hips off the ground, bringing your knees towards your chest.<br>" +
                            "&emsp;- Lower back down with control.<br><br>" +
                            "Remember to focus on proper form, breathe consistently throughout each exercise, and listen to your body. Gradually increase the intensity and duration of your workouts as your strength improves. Additionally, incorporating a balanced diet and overall fitness routine can help you achieve your desired results.";
                    break;
                case "biceps":
                    title = "Biceps (Biceps Brachii)";
                    videoURL = "https://www.youtube.com/embed/Zjv0tiMjkJU";
                    description = "Biceps workouts are designed to target and strengthen the muscles in the front of your upper arms, specifically the biceps brachii. Here's a brief overview of a biceps workout:<br><br>" +
                            "1. Barbell Bicep Curls:<br>" +
                            "&emsp;- Stand with your feet shoulder-width apart and hold a barbell with an underhand grip, palms facing upwards.<br>" +
                            "&emsp;- Keep your elbows close to your body and slowly curl the barbell towards your chest, contracting your biceps.<br>" +
                            "&emsp;- Lower the barbell back down with control.<br><br>" +
                            "2. Dumbbell Hammer Curls:<br>" +
                            "&emsp;- Hold a pair of dumbbells at your sides with your palms facing each other, using a neutral grip.<br>" +
                            "&emsp;- Keeping your elbows close to your body, curl the dumbbells upwards until your forearms are vertical.<br>" +
                            "&emsp;- Slowly lower the dumbbells back down.<br><br>" +
                            "3. Preacher Curls:<br>" +
                            "&emsp;- Sit at a preacher curl bench and place your upper arms against the pad, ensuring your chest is against the support.<br>" +
                            "&emsp;- Grasp an EZ bar with an underhand grip, palms facing upwards.<br>" +
                            "&emsp;- Curl the barbell upwards towards your shoulders, focusing on squeezing your biceps at the top of the movement.<br><br>" +
                            "4. Concentration Curls:<br>" +
                            "&emsp;- Sit on a bench with your legs spread apart and hold a dumbbell in one hand.<br>" +
                            "&emsp;- Rest your elbow against your inner thigh and fully extend your arm.<br>" +
                            "&emsp;- Curl the dumbbell upwards towards your shoulder, then lower it back down with control.<br><br>" +
                            "5. Cable Bicep Curls:<br>" +
                            "&emsp;- Stand in front of a cable machine with a straight bar attachment at the lowest setting.<br>" +
                            "&emsp;- Grab the bar with an underhand grip, palms facing upwards.<br>" +
                            "&emsp;- Curl the bar upwards towards your shoulders, then slowly lower it back down.<br><br>" +
                            "6. Chin-Ups:<br>" +
                            "&emsp;- Grab a pull-up bar with an underhand grip, hands shoulder-width apart.<br>" +
                            "&emsp;- Pull yourself up until your chin clears the bar, engaging your biceps and back muscles.<br>" +
                            "&emsp;- Lower yourself back down with control.<br><br>" +
                            "Remember to maintain proper form throughout each exercise, focusing on controlled movements and squeezing your biceps at the top of each repetition. Gradually increase the weight and intensity of your workouts as your strength improves, and ensure you incorporate rest days and proper nutrition to support muscle growth and recovery.";
                    break;
                case "calves":
                    title = "Calves (Gastrocnemius)";
                    videoURL = "https://www.youtube.com/embed/2zX-NCJJbW0";
                    description = "Calves workouts are designed to target and strengthen the muscles in the back of your lower legs, specifically the gastrocnemius and soleus muscles. Here's a brief overview of a calves workout:<br><br>" +
                            "1. Standing Calf Raises:<br>" +
                            "&emsp;- Stand with the balls of your feet on an elevated surface, such as a calf raise machine or a block.<br>" +
                            "&emsp;- Keep your knees slightly bent and your heels hanging off the edge.<br>" +
                            "&emsp;- Slowly raise your heels as high as possible by pushing through the balls of your feet.<br>" +
                            "&emsp;- Lower your heels back down below the level of the platform, feeling a stretch in your calves.<br><br>" +
                            "2. Seated Calf Raises:<br>" +
                            "&emsp;- Sit on a calf raise machine with your knees bent at a 90-degree angle and the balls of your feet on the foot platform.<br>" +
                            "&emsp;- Lower the weight by pushing the foot platform down as far as possible.<br>" +
                            "&emsp;- Contract your calf muscles to raise the weight back up as high as possible.<br>" +
                            "&emsp;- Slowly lower the weight back down, feeling a stretch in your calves.<br><br>" +
                            "3. Calf Press on Leg Press Machine:<br>" +
                            "&emsp;- Sit on a leg press machine and place the balls of your feet on the bottom edge of the footplate.<br>" +
                            "&emsp;- Release the safety bars and extend your legs until they are almost fully straight.<br>" +
                            "&emsp;- Lower the weight by allowing your heels to drop as far as possible, feeling a stretch in your calves.<br>" +
                            "&emsp;- Press through the balls of your feet to raise the weight back up, contracting your calf muscles.<br><br>" +
                            "4. Jump Rope:<br>" +
                            "&emsp;- Hold a jump rope in both hands and stand with your feet together.<br>" +
                            "&emsp;- Swing the rope over your head and jump over it with both feet, landing softly on the balls of your feet.<br>" +
                            "&emsp;- Continue jumping rope for a set duration or number of repetitions, focusing on keeping your calves engaged.<br><br>" +
                            "5. Single-Leg Calf Raises:<br>" +
                            "&emsp;- Stand on one foot with the other foot lifted slightly off the ground.<br>" +
                            "&emsp;- Push through the ball of your foot to raise your heel as high as possible.<br>" +
                            "&emsp;- Lower your heel back down below the level of the floor, feeling a stretch in your calf.<br>" +
                            "&emsp;- Repeat on the opposite side.<br><br>" +
                            "Remember to maintain proper form throughout each exercise, focusing on controlled movements and squeezing your calf muscles at the top of each repetition. Gradually increase the weight and intensity of your workouts as your strength improves, and ensure you incorporate rest days and proper nutrition to support muscle growth and recovery.";
                    break;
                case "chest":
                    title = "Chest (pectoralis)";
                    videoURL = "https://www.youtube.com/embed/xtEFVrwZFGU";
                    description = "Chest workouts are designed to target and strengthen the muscles in the front of your upper body, specifically the pectoralis major and minor muscles. Here's a brief overview of a chest workout:<br><br>" +
                            "1. Barbell Bench Press:<br>" +
                            "&emsp;- Lie on a flat bench with your feet flat on the floor and grip the barbell slightly wider than shoulder-width apart.<br>" +
                            "&emsp;- Lower the barbell to your chest, keeping your elbows tucked close to your body.<br>" +
                            "&emsp;- Push the barbell back up to the starting position, fully extending your arms.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "2. Dumbbell Flyes:<br>" +
                            "&emsp;- Lie on a flat bench with a dumbbell in each hand and your arms extended above your chest.<br>" +
                            "&emsp;- Lower the dumbbells out to the sides in a wide arc until you feel a stretch in your chest.<br>" +
                            "&emsp;- Bring the dumbbells back up to the starting position, squeezing your chest muscles at the top.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "3. Incline Bench Press:<br>" +
                            "&emsp;- Lie on an incline bench set to about a 30-45 degree angle with your feet flat on the floor.<br>" +
                            "&emsp;- Grip the barbell slightly wider than shoulder-width apart and lower it to your upper chest.<br>" +
                            "&emsp;- Push the barbell back up to the starting position, fully extending your arms.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "4. Cable Crossovers:<br>" +
                            "&emsp;- Stand in the middle of a cable machine with the pulleys set to the highest position.<br>" +
                            "&emsp;- Hold a cable handle in each hand and step forward with one foot.<br>" +
                            "&emsp;- Pull the handles down and across your body in a wide arc, squeezing your chest at the bottom of the movement.<br>" +
                            "&emsp;- Return to the starting position with control.<br><br>" +
                            "5. Push-Ups:<br>" +
                            "&emsp;- Start in a plank position with your hands slightly wider than shoulder-width apart.<br>" +
                            "&emsp;- Lower your body towards the ground by bending your elbows, keeping your body in a straight line.<br>" +
                            "&emsp;- Push back up to the starting position, fully extending your arms.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "Remember to maintain proper form throughout each exercise, focusing on controlled movements and squeezing your chest muscles at the top of each repetition. Gradually increase the weight and intensity of your workouts as your strength improves, and ensure you incorporate rest days and proper nutrition to support muscle growth and recovery.";
                    break;
                case "glutes":
                    title = "Glutes (gluteus maximus and medius)";
                    videoURL = "https://www.youtube.com/embed/eFtbf720CQY";
                    description = "Glutes workouts are designed to target and strengthen the muscles in your buttocks, primarily the gluteus maximus and gluteus medius. Here's a brief overview of a glutes workout:<br><br>" +
                            "1. Squats:<br>" +
                            "&emsp;- Stand with your feet shoulder-width apart and your toes slightly turned out.<br>" +
                            "&emsp;- Lower your body down as if sitting back into a chair, keeping your chest up and your knees tracking over your toes.<br>" +
                            "&emsp;- Push through your heels to return to the starting position, squeezing your glutes at the top.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "2. Lunges:<br>" +
                            "&emsp;- Stand with your feet together and take a large step forward with one foot.<br>" +
                            "&emsp;- Lower your body down until both knees are bent at a 90-degree angle, keeping your front knee tracking over your toes.<br>" +
                            "&emsp;- Push through your front heel to return to the starting position, squeezing your glutes at the top.<br>" +
                            "&emsp;- Repeat on the opposite side.<br><br>" +
                            "3. Glute Bridges:<br>" +
                            "&emsp;- Lie on your back with your knees bent and your feet flat on the floor, hip-width apart.<br>" +
                            "&emsp;- Lift your hips up towards the ceiling, squeezing your glutes at the top of the movement.<br>" +
                            "&emsp;- Lower your hips back down to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "4. Hip Thrusts:<br>" +
                            "&emsp;- Sit on the floor with your upper back against a bench and a barbell across your hips.<br>" +
                            "&emsp;- Plant your feet firmly on the ground and drive through your heels to lift your hips towards the ceiling.<br>" +
                            "&emsp;- Squeeze your glutes at the top of the movement, then lower your hips back down with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "5. Donkey Kicks:<br>" +
                            "&emsp;- Start on your hands and knees with your wrists directly under your shoulders and your knees under your hips.<br>" +
                            "&emsp;- Keeping your knee bent, lift one leg up towards the ceiling, squeezing your glutes at the top.<br>" +
                            "&emsp;- Lower your leg back down with control, then repeat on the opposite side.<br><br>" +
                            "Remember to maintain proper form throughout each exercise, focusing on engaging your glute muscles and avoiding excessive arching or rounding of your lower back. Gradually increase the weight and intensity of your workouts as your strength improves, and ensure you incorporate rest days and proper nutrition to support muscle growth and recovery.";
                    break;
                case "hamstrings":
                    title = "Hamstrings (biceps femoris)";
                    videoURL = "https://www.youtube.com/embed/7Jt3CMmUcbM";
                    description = "Hamstrings workouts are designed to target and strengthen the muscles in the back of your thighs, primarily the biceps femoris, semitendinosus, and semimembranosus muscles. Here's a brief overview of a hamstrings workout:<br><br>" +
                            "1. Deadlifts:<br>" +
                            "&emsp;- Stand with your feet hip-width apart and a barbell in front of you on the ground.<br>" +
                            "&emsp;- Bend at your hips and knees to lower your torso towards the ground, keeping your back straight.<br>" +
                            "&emsp;- Grab the barbell with an overhand grip and lift it up by straightening your hips and knees.<br>" +
                            "&emsp;- Lower the barbell back down to the ground with control, keeping it close to your body.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "2. Romanian Deadlifts:<br>" +
                            "&emsp;- Stand with your feet hip-width apart and hold a barbell in front of your thighs with an overhand grip.<br>" +
                            "&emsp;- Keeping your back straight, hinge at your hips and lower the barbell towards the ground, sliding it down your thighs.<br>" +
                            "&emsp;- Lower the barbell as far as your flexibility allows, feeling a stretch in your hamstrings.<br>" +
                            "&emsp;- Engage your hamstrings and glutes to return to the starting position, squeezing them at the top.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "3. Hamstring Curls:<br>" +
                            "&emsp;- Lie face down on a leg curl machine with your legs straight and your ankles under the padded bar.<br>" +
                            "&emsp;- Flex your knees to lift the padded bar towards your glutes, contracting your hamstrings.<br>" +
                            "&emsp;- Slowly lower the padded bar back down to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "4. Good Mornings:<br>" +
                            "&emsp;- Stand with your feet shoulder-width apart and a barbell across your upper back.<br>" +
                            "&emsp;- Keeping your back straight, bend forward at your hips until your torso is parallel to the ground.<br>" +
                            "&emsp;- Engage your hamstrings and glutes to return to the starting position, squeezing them at the top.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "5. Single-Leg Deadlifts:<br>" +
                            "&emsp;- Stand on one leg with a dumbbell in the opposite hand, hanging down in front of you.<br>" +
                            "&emsp;- Hinge at your hips and lower the dumbbell towards the ground, keeping your back straight and your free leg extended behind you for balance.<br>" +
                            "&emsp;- Engage your hamstrings and glutes to return to the starting position, squeezing them at the top.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions on each leg.<br><br>" +
                            "Remember to maintain proper form throughout each exercise, focusing on engaging your hamstrings and avoiding excessive rounding of your back. Gradually increase the weight and intensity of your workouts as your strength improves, and ensure you incorporate rest days and proper nutrition to support muscle growth and recovery.";
                    break;
                case "lats":
                    title = "Lats (latissimus dorsi)";
                    videoURL = "https://www.youtube.com/embed/1AGOuvpAfAg";
                    description = "Lats workouts are designed to target and strengthen the muscles in your upper back, specifically the latissimus dorsi muscles. Here's a brief overview of a lats workout:<br><br>" +
                            "1. Pull-Ups:<br>" +
                            "&emsp;- Grip a pull-up bar with your hands slightly wider than shoulder-width apart and your palms facing away from you.<br>" +
                            "&emsp;- Hang from the bar with your arms fully extended and your core engaged.<br>" +
                            "&emsp;- Pull your body up towards the bar until your chin clears the bar, keeping your elbows close to your sides.<br>" +
                            "&emsp;- Lower your body back down to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "2. Lat Pulldowns:<br>" +
                            "&emsp;- Sit at a lat pulldown machine with your knees securely under the pads and your hands gripping the bar slightly wider than shoulder-width apart.<br>" +
                            "&emsp;- Pull the bar down towards your chest, keeping your elbows close to your sides and squeezing your shoulder blades together.<br>" +
                            "&emsp;- Slowly release the bar back up to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "3. Bent-Over Rows:<br>" +
                            "&emsp;- Stand with your feet hip-width apart and hold a barbell or dumbbells in front of your thighs with an overhand grip.<br>" +
                            "&emsp;- Hinge forward at your hips until your torso is parallel to the ground, keeping your back straight.<br>" +
                            "&emsp;- Pull the weight towards your lower ribcage, squeezing your shoulder blades together at the top of the movement.<br>" +
                            "&emsp;- Lower the weight back down to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "4. Seated Cable Rows:<br>" +
                            "&emsp;- Sit at a cable row machine with your knees bent and your feet securely placed on the platform.<br>" +
                            "&emsp;- Grip the handles with your palms facing each other and sit up tall with your chest lifted.<br>" +
                            "&emsp;- Pull the handles towards your lower ribcage, squeezing your shoulder blades together at the end of the movement.<br>" +
                            "&emsp;- Slowly release the handles back to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "5. Straight-Arm Pulldowns:<br>" +
                            "&emsp;- Stand in front of a cable machine with a straight bar attached to the high pulley.<br>" +
                            "&emsp;- Grip the bar with your hands shoulder-width apart and extend your arms straight out in front of you.<br>" +
                            "&emsp;- Pull the bar down towards your thighs, keeping your arms straight and your core engaged.<br>" +
                            "&emsp;- Slowly release the bar back up to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "Remember to maintain proper form throughout each exercise, focusing on engaging your lats and avoiding excessive swinging or momentum. Gradually increase the weight and intensity of your workouts as your strength improves, and ensure you incorporate rest days and proper nutrition to support muscle growth and recovery.";
                    break;
                case "lower-back":
                    title = "Lower Back (erector spinae)";
                    videoURL = "https://www.youtube.com/embed/wxLmD5nsK_M";
                    description = "Lower back workouts are designed to target and strengthen the muscles in your lower back, primarily the erector spinae muscles. Here's a brief overview of a lower back workout:<br><br>" +
                            "1. Deadlifts:<br>" +
                            "&emsp;- Stand with your feet hip-width apart and a barbell in front of you on the ground.<br>" +
                            "&emsp;- Bend at your hips and knees to lower your torso towards the ground, keeping your back straight.<br>" +
                            "&emsp;- Grab the barbell with an overhand grip and lift it up by straightening your hips and knees.<br>" +
                            "&emsp;- Lower the barbell back down to the ground with control, keeping it close to your body.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "2. Hyperextensions:<br>" +
                            "&emsp;- Lie face down on a hyperextension bench with your hips at the edge and your feet secured under the pads.<br>" +
                            "&emsp;- Cross your arms over your chest or hold a weight plate to your chest for resistance.<br>" +
                            "&emsp;- Engage your lower back muscles to lift your torso up until your body forms a straight line.<br>" +
                            "&emsp;- Lower your torso back down to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "3. Superman Exercise:<br>" +
                            "&emsp;- Lie face down on the ground with your arms extended overhead and your legs straight out behind you.<br>" +
                            "&emsp;- Simultaneously lift your arms, chest, and legs off the ground, aiming to create a 'flying' position.<br>" +
                            "&emsp;- Squeeze your lower back muscles at the top of the movement, then lower back down with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "4. Bird Dog Exercise:<br>" +
                            "&emsp;- Start on your hands and knees in a tabletop position, with your wrists under your shoulders and your knees under your hips.<br>" +
                            "&emsp;- Extend your right arm forward and your left leg backward, keeping your hips level and your core engaged.<br>" +
                            "&emsp;- Hold this position briefly, then return to the starting position and switch sides.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions on each side.<br><br>" +
                            "5. Quadruped Opposite Arm/Leg Raise:<br>" +
                            "&emsp;- Start on your hands and knees in a tabletop position, with your wrists under your shoulders and your knees under your hips.<br>" +
                            "&emsp;- Extend your right arm forward and your left leg backward, maintaining a straight line from your fingertips to your heel.<br>" +
                            "&emsp;- Hold this position briefly, then return to the starting position and switch sides.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions on each side.<br><br>" +
                            "Remember to maintain proper form throughout each exercise, focusing on engaging your lower back muscles and avoiding hyperextension or excessive arching of your spine. Gradually increase the weight and intensity of your workouts as your strength improves, and ensure you incorporate rest days and proper nutrition to support muscle growth and recovery.";
                    break;
                case "middle-back":
                    title = "Middle Back (rhomboids)";
                    videoURL = "https://www.youtube.com/embed/1RGRP-OHUF0";
                    description = "Middle back workouts are designed to target and strengthen the muscles in your mid-back, primarily the rhomboid muscles. Here's a brief overview of a middle back workout:<br><br>" +
                            "1. Bent-Over Rows:<br>" +
                            "&emsp;- Stand with your feet hip-width apart and hold a barbell or dumbbells in front of your thighs with an overhand grip.<br>" +
                            "&emsp;- Hinge forward at your hips until your torso is parallel to the ground, keeping your back straight.<br>" +
                            "&emsp;- Pull the weight towards your lower ribcage, squeezing your shoulder blades together at the top of the movement.<br>" +
                            "&emsp;- Lower the weight back down to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "2. Seated Cable Rows:<br>" +
                            "&emsp;- Sit at a cable row machine with your knees bent and your feet securely placed on the platform.<br>" +
                            "&emsp;- Grip the handles with your palms facing each other and sit up tall with your chest lifted.<br>" +
                            "&emsp;- Pull the handles towards your lower ribcage, squeezing your shoulder blades together at the end of the movement.<br>" +
                            "&emsp;- Slowly release the handles back to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "3. T-Bar Rows:<br>" +
                            "&emsp;- Stand with your feet shoulder-width apart and straddle a T-bar row machine.<br>" +
                            "&emsp;- Bend your knees slightly and hinge forward at your hips to grab the handles with an overhand grip.<br>" +
                            "&emsp;- Pull the handles towards your lower ribcage, squeezing your shoulder blades together at the top of the movement.<br>" +
                            "&emsp;- Lower the handles back down to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "4. Face Pulls:<br>" +
                            "&emsp;- Attach a rope handle to a cable machine at shoulder height.<br>" +
                            "&emsp;- Stand facing the machine and grab the rope handles with an overhand grip.<br>" +
                            "&emsp;- Pull the handles towards your face, keeping your elbows high and squeezing your shoulder blades together at the end of the movement.<br>" +
                            "&emsp;- Slowly release the handles back to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "5. Dumbbell Reverse Flyes:<br>" +
                            "&emsp;- Stand with your feet hip-width apart and hold a pair of dumbbells in front of your thighs with an overhand grip.<br>" +
                            "&emsp;- Hinge forward at your hips until your torso is parallel to the ground, keeping a slight bend in your elbows.<br>" +
                            "&emsp;- Raise the dumbbells out to the sides until your arms are parallel to the ground, squeezing your shoulder blades together at the top of the movement.<br>" +
                            "&emsp;- Lower the dumbbells back down to the starting position with control.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions.<br><br>" +
                            "Remember to maintain proper form throughout each exercise, focusing on engaging your middle back muscles and avoiding excessive swinging or momentum. Gradually increase the weight and intensity of your workouts as your strength improves, and ensure you incorporate rest days and proper nutrition to support muscle growth and recovery.";
                    break;
                case "neck":
                    title = "Neck";
                    videoURL = "https://www.youtube.com/embed/Dq-Fj-vFfYE";
                    description = "Neck workouts are designed to target and strengthen the muscles in your neck, which include the cervical spine, trapezius, and sternocleidomastoid muscles. Here's a brief overview of a neck workout:<br><br>" +
                            "1. Neck Flexion:<br>" +
                            "&emsp;- Sit on a chair with your back straight and your feet flat on the ground.<br>" +
                            "&emsp;- Place your hands on your thighs for support.<br>" +
                            "&emsp;- Lower your chin towards your chest, bringing your head forward in a controlled motion.<br>" +
                            "&emsp;- Hold this position for a few seconds, feeling a stretch in the back of your neck.<br>" +
                            "&emsp;- Return to the starting position and repeat for the desired number of repetitions.<br><br>" +
                            "2. Neck Extension:<br>" +
                            "&emsp;- Sit on a chair with your back straight and your feet flat on the ground.<br>" +
                            "&emsp;- Place your hands on your thighs for support.<br>" +
                            "&emsp;- Lean your head back slowly, bringing your chin towards the ceiling.<br>" +
                            "&emsp;- Hold this position for a few seconds, feeling a stretch in the front of your neck.<br>" +
                            "&emsp;- Return to the starting position and repeat for the desired number of repetitions.<br><br>" +
                            "3. Neck Lateral Flexion:<br>" +
                            "&emsp;- Sit on a chair with your back straight and your feet flat on the ground.<br>" +
                            "&emsp;- Place your right hand on the right side of your head.<br>" +
                            "&emsp;- Gently tilt your head to the right, bringing your right ear towards your right shoulder.<br>" +
                            "&emsp;- Hold this position for a few seconds, feeling a stretch on the left side of your neck.<br>" +
                            "&emsp;- Return to the starting position and repeat on the left side.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions on each side.<br><br>" +
                            "4. Neck Rotation:<br>" +
                            "&emsp;- Sit on a chair with your back straight and your feet flat on the ground.<br>" +
                            "&emsp;- Place your hands on your thighs for support.<br>" +
                            "&emsp;- Slowly turn your head to the right, bringing your chin towards your right shoulder.<br>" +
                            "&emsp;- Hold this position for a few seconds, feeling a stretch in the left side of your neck.<br>" +
                            "&emsp;- Return to the starting position and repeat on the left side.<br>" +
                            "&emsp;- Repeat for the desired number of repetitions on each side.<br><br>" +
                            "Remember to perform these exercises with controlled movements and to avoid any sudden or jerky motions. Start with light resistance or body weight and gradually increase the intensity as your neck muscles become stronger. It's important to listen to your body and stop any exercise if you experience pain or discomfort.";
                    break;
            }
        }
    %>
    <div style="background-color: whitesmoke;">
    <h2><%= title %></h2>
    <iframe width="560" height="315" src="<%= videoURL %>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    <div class="video-description">
        <p><%= description %></p>
    </div>
    </div>
</div>

</body>
</html>
 