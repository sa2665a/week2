<h1>Twit</h1>
<p style="color:red;"><%=@error%></p>
<h2>Login form</h2>
  <form action="/login" method="POST">
    <input type="text" name="username" required>
    <input type="password" name="password" required>
    <button type="submit" name="action" value="register">login</button>
  </form>

<h2>Register for</h2>
  <form action="/register" method="POST">
    <input type="text" name="username" required>
    <input type="password" name="password" required>
    <button type="submit" name="action" value="register">register</button>
  </form>

