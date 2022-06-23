<!DOCTYPE html>
<html>
<head>
    <title>MYSELL</title>
</head>
<body>
<h1>MYSELL</h1>
<h3>Info about user ${user.name}</h3>
<b> Number of phone:</b> ${user.phoneNumber}<br>
<b> Email:</b> ${user.email}<br>
<h4>Info about things ${user.name}</h4>
<#list products as product>
<div>
    <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">More...</a> </p>
</div>
<#else>
<h3>Not to things</h3>
</#list>
<#if errorMessage??>
<h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html