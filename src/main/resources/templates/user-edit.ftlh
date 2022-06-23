<!DOCTYPE html>
<html>
<head>
    <title>MYSELL</title>
</head>
<body>
<h1>MYSELL</h1>
<h3>Edit user ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
    <div>
        <label><input rype="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>
<input type="hidden" value="${user.id}" name="userId">
<input type="hidden" value="${_csrf.token}" name="_csrf">
<button type="submit">Save</button>
</form>
</body>
</html>
