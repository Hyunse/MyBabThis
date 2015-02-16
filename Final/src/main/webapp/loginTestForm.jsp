<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>CodePen - Login</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" media="screen" type="text/css" />

</head>
<body>

  <div class="container">

  <div id="login-form">

    <h3>Login</h3>

    <fieldset>

      <form action="javascript:void(0);" method="get">

        <input type="email" required value="Email" onBlur="if(this.value=='')this.value='Email'" onFocus="if(this.value=='Email')this.value='' "> <!-- JS because of IE support; better: placeholder="Email" -->

        <input type="password" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "> <!-- JS because of IE support; better: placeholder="Password" -->

        <input type="submit" value="Login">

        <footer class="clearfix">

          <p><span class="info">?</span><a href="#">Forgot Password</a></p>

        </footer>

      </form>

    </fieldset>

  </div> <!-- end login-form -->

</div>

</body>

</html>