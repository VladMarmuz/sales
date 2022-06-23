<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>MYSELL</title>
</head>
<body>
<h1>MYSELL</h1><hr>
<h4>For Administrations</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Number of phone</th>
        <th>Active</th>
        <th>Role</th>
        <th>Ban</th>
        <th>Change</th>
        <th>More</th>
    </tr>
    <#list users as user>
    <tr>
        <th>${user.email}</th>
        <th>${user.phoneNumber}</th>
        <th><#if user.active>true<#else>false</#if></th>
        <th><#list user.roles as role>${role}<#sep>, </#list></th>
        <th>
            <form action="/admin/user/ban/${user.id}" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Ban">
        </form>
        </th>
        <th><a href="/admin/user/edit/${user.id}">Edit</a></th>
        <th><a href="/user/${user.id}">more information</a></th>
    </tr>
    <#else>
    <h3>Not to things</h3>
    </#list>>
</table>
</body>
</html>