<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
<cfcomponent extends="Wheels">
	
	<cffunction name="init">

		<cfscript>
			filters(through = "checkLogin", except = "login,signin");
		</cfscript>
	</cffunction>

	<cffunction name="checkLogin">

		<cfscript>
			if(!structKeyExists(session, "user"))
			{
				redirectTo(controller="main", action="login");
			}			
		</cfscript>
	</cffunction>

</cfcomponent>