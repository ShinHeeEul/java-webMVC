<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Collection" %>
<%@ page import="jwp.model.User" %>

<!doctype html>
<html lang="ko">

<%@ include file="/include/header.jspf" %>
  <body>
    <%@ include file="/include/navigation.jspf" %>
    <div class="container" id="main">

        <main class="form-signin">

           <%
              User user = (User) request.getAttribute("user");
            %>
          <form name="update" method="post" action="/user/update">
            <div class="form-floating">
              <input type="text" class="form-control" id="userId" name="userId" placeholder="Id" value= <%= user.getUserId() %> readonly>
              <label for="userId">User Id</label>
            </div>
            <div class="form-floating">
              <input type="password" class="form-control" id="password" name="password" placeholder="Password" value = <%= user.getPassword() %> >
              <label for="password">Password</label>
            </div>
            <div class="form-floating">
              <input type="text" class="form-control" id="name" name="name" placeholder="name" value = <%= user.getName() %>>
              <label for="name">Name</label>
            </div>
            <div class="form-floating">
              <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" value = <%= user.getEmail() %>>
              <label for="email">Email address</label>
            </div>
            <div style="height:10px;">
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Update</button>
          </form>
        </main>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/scripts.js"></script>
  </body>
</html>