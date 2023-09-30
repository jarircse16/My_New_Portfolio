<%@ Language=VBScript %>
<!--#include file="client_ip.asp" -->
<html>
<head>
    <title>Contact Me</title>
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

    <div id="contact-section" class="section">
    <center><h2>Contact Me</h2></center>
    <center><form action="send_message.asp" method="post">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required><br><br>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required><br><br>

      <label for="message">Message:</label>
      <textarea id="message" name="message" rows="4" required></textarea><br><br>

      <button type="submit" value="Submit">Submit</button>
      </form>
        <ul>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email: <a href="mailto:jarircse16@gmail.com?subject=Hello%20World&body=I%20hope%20you%20are%20doing%20well.">jarircse16@gmail.com</a></li><br>
            <li>Phone: +8801615406040</li>
        </ul>
</center>

        </div>
<footer>
        <center><button><a href="index.asp">Back to Portfolio</a></button>&nbsp;
        <button><a href="about.asp">About Me</a></center>
        <center><p>Your IP Address is: <%= clientIP %></p>
        <p>&copy; 2023 Jarir Ahmed. All Rights Reserved.</p></center>
</footer>
</body>
</html>
