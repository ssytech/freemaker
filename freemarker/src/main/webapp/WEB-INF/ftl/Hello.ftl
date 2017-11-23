<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">  
	<title>freemarker</title>  
</head>  
<body>  
	<h2>${username}</h2>  
	<ul>
		<#list userList as item>
			<li>${item.name},Birthday:${item.birthday?string('yyyy-MM-dd')}</li>
		</#list>
	</ul>
</body>  
</html>  