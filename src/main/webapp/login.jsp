<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style1.css" />
    <title>Neuromorphic Login Page by Rohit Purkait</title>
  </head>
  <body>
    <div class="main-login-form">
      <div class="login-form-label">
        <h2>Login</h2>
      </div>
      <form action= "login" method= "post" class="login-form">
        <input
          maxlength="30"
          minlength="5"
          required="true"
          class="username-input"
          type="text"
          name = "username"
          placeholder="username"
        />
        <input
          maxlength="30"
          minlength="5"
          required="true"
          class="password-input"
          name="password"
          type="password"
          placeholder="password"
        />
        <button class="login-button">login</button>
      </form>
      <div class="divider">
        <div class="line"></div>
        <div class="or">Or</div>
        <div class="line"></div>
      </div>
      <button class="google-login-button">
        <div class="google-login-logo">
          <img src="./google.svg" alt="" />
        </div>
        <div class="google-login-text">login using google</div>
      </button>
    </div>
  </body>
</html>
    