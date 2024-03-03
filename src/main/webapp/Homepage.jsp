<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>EventPulse - Your Event Management Partner</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #5805ed; /* Change the background color */
        }

        .navbar {
            background-color: #007bff; /* Change the navigation bar color */
            color: #fff;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            top: 0;
            transition: background-color 0.3s ease-in-out;
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            padding: 10px 20px;
        }

        .navbar a:hover {
            background-color: #0056b3;
        }

        .p {
            display: flex;
            flex-direction: row;
            align-items: center;
            padding: 20px;
            color: #fff;
        }

        .p img {
            width: 50%;
            margin-right: 20px;
            border-radius: 10px; /* Add rounded corners to the image */
        }

        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        .social a {
            text-decoration: none;
            color: white;
            padding: 10px;
        }

        .social a img {
            width: 20px;
            height: 20px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="login.jsp">Login</a>
        <a href="#events">Events</a>
        <a href="#request-demo">Request Demo</a>
        <a href="#about-us">About Us</a>
        <a href="#services">Services</a>
    </div>
    <div class="p">
        <img alt="Event Image" src="10.jpg">
        <div>
            <h2>Event Management</h2>
            <p>We can help you manage your important live events through our website. We provide dedicated service to our customers.</p>
        </div>
    </div>
    <footer class="footer">
        <p id="copyr">©EventPulse.inc 2023</p>
        <div class="social">
            <a href="https://www.facebook.com/example"><img src="facebook.png" alt="Facebook"></a>
            <a href="https://www.twitter.com/example"><img src="twitter.png" alt="Twitter"></a>
            <a href="https://www.instagram.com/example"><img src="instagram.png" alt="Instagram"></a>
        </div>
    </footer>
    <script>
        // Add a scrolling effect for the navigation bar
        window.onscroll = function() {
            if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
                document.querySelector('.navbar').style.backgroundColor = '#007bff';
            } else {
                document.querySelector('.navbar').style.backgroundColor = 'transparent';
            }
        };
    </script>
</body>
</html>
