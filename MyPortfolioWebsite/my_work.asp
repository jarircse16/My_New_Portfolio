<%@ Language=VBScript %>
<!--#include file="client_ip.asp" -->
<html>
<head>
    <title>My Work</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
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
           overflow: hidden; /* Clear floated elements within this container */
           flex-wrap: wrap;
           align-items: center; /* Vertically center the content */
           flex-basis: calc(50% - 10px); /* 50% width minus spacing */
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
            /* CSS for the .container2 class */
      .container2 {
          display: flex; /* Use Flexbox for layout */
          justify-content: space-between; /* Space items evenly horizontally */
          align-items: flex-start; /* Align items at the top vertically */
          flex-wrap: wrap; /* Allow items to wrap to the next row if needed */
      }

      /* CSS for the .container2 class */
      .container2 {
          display: flex; /* Use Flexbox for layout */
          justify-content: space-between; /* Space items evenly horizontally */
          align-items: flex-start; /* Align items at the top vertically */
          flex-wrap: wrap; /* Allow items to wrap to the next row if needed */
      }

      /* Adjust the width of sections within .container2 */
      .container2 .section {
          flex-basis: calc(50% - 10px); /* 50% width minus spacing */
          padding: 20px; /* Add padding to sections */
          text-align: center; /* Center-align the content within sections */
      }



    </style>

</head>
<body>
    <header>
        <h1>My Work Details</h1>
    </header>
    <div class="container">
        <!-- Project 1: PHP_CUT _OFF_ WAF Details -->
        <div id="work1" class="section">
            <h2>Project 1: PHP_CUT _OFF_ WAF</h2>
            <p>Designed a robust PHP firewall system to protect against a wide range of web vulnerabilities, including SQL injection (SQLi), local file inclusion (LFI), remote file inclusion (RFI), server-side includes (SSI), cross-site scripting (XSS), cross-site request forgery (CSRF), directory traversal, and clickjacking. This firewall intercepts and neutralizes potential threats in URLs, safeguarding users and redirecting them to the homepage when necessary.</p>
            <!-- Add more details as needed -->
        </div>

        <!-- Project 2: Rate_Limit_DDOS_WAF_IP_BLOCK_24 Details -->
        <div id="work2" class="section">
            <h2>Project 2: Rate_Limit_DDOS_WAF_IP_BLOCK_24</h2>
            <p>Developed a PHP firewall to detect incoming HTTP GET and POST requests to filter out DDOS attacks using the request limit of 1000 requests per hour. Then it blocks the IP for 24 hours.</p>
            <!-- Add more details as needed -->
        </div>
    </div>
    <footer>
        <!-- Link back to the portfolio page -->
        <center><button><a href="index.asp">Back to Portfolio</a></button></center>
        <center><p>Your IP Address is: <%= clientIP %></p></center>
        <center><p>&copy; 2023 Your Name. All Rights Reserved.</p></center>
    </footer>
</body>
</html>
