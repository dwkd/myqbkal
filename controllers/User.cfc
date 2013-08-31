<cfcomponent name="User" extends="Controller">


	<cffunction name="register" >
		
		<cfscript>
			var user = model("user").new();
		</cfscript>

	</cffunction>

</cfcomponent>