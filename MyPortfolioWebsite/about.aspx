<%@ Language=VBScript %>
<!--#include file="client_ip.aspx" -->
<html>
<head>
    <title>About Me</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <style>
          /* Set font family and background color for the body */
          p {
              color: blue;
          }
          h2 {
              color: red;
          }
          body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
          }

          /* Style headings */
          h1 {
            color: yellow;
          }

          /* Add a border to images */
          img {
            border: 2px solid #ddd;
          }

          /* Style links */
          a {
            color: black;
          }

          /* Add hover effect to links */
          a:hover {
              text-decoration: underline;
              color: red;
          }
          /* Center an element horizontally */
          .center-horizontal {
                margin: 0 auto;
                width: 50%;
          }

          /* Center an element vertically */
          .center-vertical {
                position: relative;
                top: 50%;
                transform: translateY(-50%);
          }
      /* Apply some basic styles for layout */
       header {
           text-align: center;
           background-color: #0074d9;
           color: black;
           padding: 10px;
       }

       .container {
           max-width: 960px;
           margin: 0 auto;
           padding: 20px;
           display: flex; /* Use Flexbox for layout */
           flex-wrap: wrap; /* Allow items to wrap to the next row if needed */
           justify-content: space-between; /* Space items evenly horizontally
       }

       /* Create separate sections */
       .section {
           background-color: #f0f0f0;
           padding: 20px;
           margin-bottom: 20px;
           box-shadow: 0px 0px 00px rgba(0, 0, 0, 0.1);
           border: none; /* Set border to none to make it invisible */
           overflow: hidden; /* Clear floated elements within this container */
           flex-wrap: wrap;
           align-items: center; /* Vertically center the content */
       }

       /* Style for the photo */
       .photo {
           float: left;
           margin-right: 250px;
           max-width: 200px; /* Set a maximum width for the photo */
       }
       /* Clear floats after floating elements */
       .clear {
           clear: both;
       }

       /* Style for portfolio items */
       .portfolio-item {
           margin-top: 20px;
       }

       .portfolio-item h2 {
           color: #333;
       }
       .about-content {
              overflow: hidden; /* Clear floated elements within this container */
              flex-wrap: wrap;
              align-items: center; /* Vertically center the content */
              flex-basis: calc(50% - 10px); /* 50% width minus spacing */
      }
      .contact-section {
          margin-top: 0; /* Remove the top margin */
      }
      /* Normal button style */
      .button {
          background-color: #0074d9; /* Button background color */
          color: #fff; /* Text color */
          padding: 10px 20px; /* Padding for the button */
          border: none; /* Remove the default button border */
          cursor: pointer; /* Change cursor to pointer on hover */
          transition: background-color 0.3s ease-in-out; /* Add a smooth transition effect */
      }

      /* Button hover effect */
      .button:hover {
          background-color: #0056b3; /* New background color on hover */
      }

    </style>
</head>
<body>
<!-- About Me Section -->
<div class="container">
<div class="section">
    <div class="photo">
        <img src="images/perfil.png" alt="Your Photo">
    </div>
    <div class="about-content">
      <div id="about-section" class="section">
        <h2><center>About Me</h2>
        <p>Hello! I am Jarir Ahmed, a web developer passionate about creating amazing web applications.</p>
        <p>I have experience in HTML, CSS, PHP, Laravel, JS, ASP, HTA, VBS and CGI Technologies.</p>
        <p>I also have interests in software development and I have worked with C# , Java Etc. languages too. You can contact me to build an attractive website for you. </p>
    </div>
    <div class="clear"></div> <!-- Clear the float -->
</div>
</div>
</div>
<footer>
    <center><button><a href="index.aspx">Back to Portfolio</a></button>
    <button><a href="contact.aspx">Contact Me</a></button></center>
    <center><p>Your IP Address is: <%= clientIP %></p>
    <p>&copy; 2023 Jarir Ahmed. All Rights Reserved.</p></center>
</footer>
</body>
</html>
