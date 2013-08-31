<cfcomponent name="Main" extends="Controller">


	<cffunction name="login" >
		
		<cfscript>
			user = model("user").new();
		</cfscript>

	</cffunction>

	<cffunction name="signin" >
		
		<cfscript>
			user = model("user").findOne(where = "username = '#params.user.username#' AND password = '#params.user.password#'");

			if(isObject(user))
			{
				session.user.id = user.id;
				redirectTo(controller = "main", action = "home");
			}
			else
			{
				user = model("user").new(username = "#params.user.username#");
				flashInsert(error = "Invalid username and/or password.");
				renderPage(action = "login");
			}
		</cfscript>

	</cffunction>

	<cffunction name="signout" >
		<cfscript>
			
			if(structKeyExists(session, "user")) 
			{
				StructDelete(session, "user");
				redirectTo(controller = "main", action = "login");
			}
		</cfscript>
	</cffunction>

</cfcomponent>