<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">  
	<title>freemarker</title>  
</head>  
<body>  
	<h2>${title01}</h2>
	<div>
		<ul>
			<li>
				int:<font>${intVar}</font><br/>
				long:<font>${longVar}</font><br/>
				string:<font>${stringVar}</font><br/>
				double:<font>${doubleVar}</font><br/>
				boolean:<font>${booleanVar?string('yes','no')}</font><br/>	
				date:<font>${dateVar?string('yyyy-MM-dd HH:mm:ss')}</font><br/>
				null:<font>${nullVar!"null"}</font><br/>
			</li>
		</ul>
	</div>
	<h2>${title02}</h2>
	<div>
		<ul>
			<li>
				<font>${userObj.name!}</font><br/>
				${userObj.brief!}
			</li>
		</ul>
	</div>
	<h2>${title03}</h2>
	<div>
		<ul>
			<li>
				list
			</li>
			<#list myList as item>
				<font>${item!}</font><br/>
			</#list>
		</ul>
		<ul>
			<li>
				map
			</li>
			<#list map?keys as key>
				<font>${key}:${map[key]}</font><br/>
			</#list>
		</ul>
	</div>
	<h2>${title04}</h2>
	<div>
		<ul>
			<li>
			  	if
			</li>
			<#assign var=100/>
			<#if var == 99>
				<font>var = 99</font>
			</#if>
			
			<br/>
			
			<#if var == 99>
				<font>var = 99</font>
			<#else>
				<font>var != 99</font>
			</#if>
			
			<br/>
			
			<#if var &gt; 99>
				<font>var > 99</font>
			<#elseif var ==99>
				<font>var == 99</font>
			<#else>
				<font>var < 99</font>
			</#if>
		</ul>
		<ul>
			<li>
			  	switch
			</li>
			<#assign var=10/>
			<#switch var>
				<#case 10>
					10<br/>
				<#case 100>
					100<br/>
				<#default>
					other<br/>
				<#break>
			</#switch>
		</ul>
	</div>
</body>  
</html>  