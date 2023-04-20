<%@ page import="model.Users"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<div class="container">
  <div class="row mt-5">
    <div class="col-md-5 m-auto mt-5">
      <h3 class="text-center">QUẢN LÝ SẢN PHẨM</h3>
      <div class="p-4 border mt-4">
      <% String contextPath = request.getContextPath(); %>
        <form action="<%=contextPath%>/QLSP" method="post">
            <div class="form-group">
              <label>Tên sản phẩm</label>
              <input type="text" class="form-control" name="name">
            </div>
            <div class="form-group">
              <label>Số lượng</label>
              <input type="number" class="form-control" name="quantity">
            </div>
            <div class="form-group">
               <label>Gía Bán</label>
               <input type="number" class="form-control" name="price">
            </div>
            <button type="submit" class="btn btn-primary">Lưu lại</button>
          </form>
      </div>
    </div>
  </div>
  <table class="table">
        <thead>
               <tr>
                    <th scope="col">Tên Sản Phẩm</th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Gía Bán</th>
               </tr>
        </thead>
        <tbody>
            <c:forEach items="${list}" var="item">
                <tr>
                    <td>${item.getProduct()}</td>
                    <td>${item.getQuantity()}</td>
                    <td>${item.getPrice()}</td>
                </tr>
            </c:forEach>
        </tbody>
  </table>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>