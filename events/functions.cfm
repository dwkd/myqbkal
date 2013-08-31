<!--- Place functions here that should be globally available in your application. --->
<cffunction name="abort">
	<cfabort/>
</cffunction>

<cffunction name="writeDump" output="true" returntype="Void">	
	<cfargument name="var" required="true" />
	<cfargument name="abort" required="false" default="false" />

	<cfdump var="#arguments.var#" />
	<cfif arguments.abort>
		<cfabort />
	</cfif>
</cffunction>