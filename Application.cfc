<cfcomponent>

	<cfset this.name = "Misael OPP Error" />

	<cffunction name="onError">
		<cfargument name="Exception" required=true />
		<cfargument name="EventName" type="String" required=true />

		<cfdump var="#arguments.Exception#" abort="true" />
	</cffunction>
</cfcomponent>