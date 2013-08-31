

<cfoutput>
	<h1>Sign In</h1>
	<div class="error">#flash("error")#</div>

	#startFormTag(action="signin")#		
		#textField(label="Username", objectName="user", property="username")#
		<br>
		#passwordField(label="Password", objectName="user", property="password")#
		<br>
		#submitTag(value="Sign In")#
	#endFormTag()#

</cfoutput>
