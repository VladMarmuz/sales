<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>MYSELL</title>
</head>
<body>
<h1>MYSELL</h1><hr>
<#if user.email??>
<h3>Name: <i>${user.name}</i></h3>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Exit"/>
</form>
<#else>
<h1><a href="/login">Login</a></h1>
</#if>
<hr>
<h4>The things from all the Europe</h4>
<form action="/" method="get">
    Find by name ad: <input type="text" name="title">
    <input type="submit" value="Search"/>;
</form>
<#list products as product>
<div>
    <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">More...</a> </p>
</div>
<#else>
<h3>Not to product</h3>
</#list>
<#if user.email??>
<hr>
<h3>Create a new product</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Title of ad: <input type="text" name="title"/><br>
    Description: <input type="text" name="description"/><br>
    Price: <input type="number" name="price"/><br>
    City: <input type="text" name="city"/><br>
    The first photo: <input type="file" name="file1"/><br>
    The second photo: <input type="file" name="file2"/><br>
    The third photo: <input type="file" name="file3"/><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="add a product"/>
</form>
</#if>
</body>
</html>
