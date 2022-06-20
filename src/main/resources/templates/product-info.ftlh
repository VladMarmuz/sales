<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>MYSELL</title>
</head>
<body>
<h1>MYSELL</h1><hr>
<h4>You can get more information here</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Title: </b>${product.title}<br>
<b>Description </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Name: </b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete product"/>

</form>
</body>
</html>
