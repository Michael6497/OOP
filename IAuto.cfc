<cfinterface>

    <cffunction  name="starten" >
        <cfargument  name="wertInitial" type = "numeric" required = "no" default = "10">
    </cffunction>

    <cffunction  name="anhalten" returntype="numeric" >
        
    </cffunction>

    <cffunction  name="gasGeben" returntype="numeric" >
        <cfargument  name="wert" type = "numeric" required = "no" default = "10">
    </cffunction>

    <cffunction name = bremsen returntype = "numeric"> 
        <cfargument name = "wert" type = "numeric" required = "no" default = "10">  
    </cffunction> 

    <cffunction name = parken returntype = "numeric" > 
        <cfargument name = "wert" type = "numeric" required = "no" default="10"> 
        <cfargument name = "ort" type = "string" required = "no" default=""> 
    </cffunction>


</cfinterface>