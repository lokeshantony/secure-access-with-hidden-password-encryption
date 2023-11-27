<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Owner Register Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2><a href="index.html">SECURE ACCESS WITH HIDDEN PASSWORD ENCRYPTION</a></h2>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="endUserLogin.html">Client</a></li>
          <li class="active"><a href="dataOwnerLogin.html"></a></li>
          <li><a href="webServerLogin.html">WebServer</a></li>
          <li></li>
		  <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <img src="images/main_img.jpg" alt="" width="972" height="313" style="padding:25px 0;" />
      <div class="clr"></div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>  Registration...!</span></h2>
          <div class="clr"></div>
        
		<%
		String str="owner";
		%>
		<div class="clr"></div>
          <p> 
		  <form action="insertData.jsp?uname=<%=str%>" method="post" id="sendemail" enctype="multipart/form-data">
            <ol>
              <li>
                <label for="name">
                <div align="left" class="style1">User Name (required)</div>
                <span class="style1">
                </label>
                </span>
                <div align="left" class="style1">
                  <input id="name" name="userid" class="text" />
                </div>
              </li>
              <li class="style1">
                <label for="password">
                <div align="left">Password (required)</div>
                </label>
                <div align="left">
                  <input type="password" id="password" name="pass" class="text" />
                </div>
              </li>
              <li class="style1">
                <label for="email">
                <div align="left">Email Address (required)</div>
                </label>
                <div align="left">
                  <input id="email" name="email" class="text" />
                </div>
              </li>
              <li class="style1">
                <label for="mobile">
                <div align="left">Mobile Number (required)</div>
                </label>
                <div align="left">
                  <input id="mobile" name="mobile" class="text" />
                </div>
              </li>
              <li class="style1">
                <label for="address">
                <div align="left">Your Address</div>
                </label>
                <div align="left">
                  <textarea id="address" name="address" rows="3" cols="50"></textarea>
                </div>
              </li>
              <li class="style1">
                <label for="dob">
                <div align="left">Date of Birth (required)</div>
                </label>
                <div align="left">
                  <input id="dob" name="dob" class="text" />
                </div>
              </li>
              <li class="style1">
                <label for="gender">
                <div align="left">Select Gender (required)</div>
                </label>
                <div align="left">
                  <select id="s1" name="gender" style="width:480px;" class="text">
                    <option>--Select--</option>
                    <option>Male</option>
                    <option>Female</option>
                  </select>
                </div>
              </li>
              <li class="style1">
                <label for="pincode">
                <div align="left">Enter Pincode (required)</div>
                </label>
                <div align="left">
                  <input id="pincode" name="pincode" class="text" />
                </div>
              </li>
              <li class="style1">
                <label for="location">
                <div align="left">Enter Location (required)</div>
                </label>
                <div align="left">
                  <input id="loc" name="location" class="text" />
                </div>
              </li>
              <li>
                <span class="style1">
                <label for="pic">
                </span>
                <div align="left" class="style1">Select Profile Picture (required)</div>
                </label>
                <div align="left">
                  <input type="file" id="pic" name="pic" class="text" />
                </div>
              </li>
              <ol>
                <ol>
                  <ol>
                    <li> <br />
                        <input name="submit" type="submit" value="REGISTER" />
                    </li>
                    <li>
                      <div align="right"><a href="endUserLogin.html">Back</a></div>
                    </li>
                  </ol>
                </ol>
              </ol>
              </li>
              <li>              </li>
            </ol>
          </form>
		  </p>
         <P>  
         </P>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="endUserLogin.html">Client</a></li>
            <li><a href="dataOwnerLogin.html"></a></li>
            <li><a href="webServerLogin.html">Web Server</a></li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
      <div class="fbg"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    
    <div class="clr"></div>
  </div>
</div>
</body>
</html>
