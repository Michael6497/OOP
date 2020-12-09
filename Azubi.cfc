
<cfcomponent accessors = "yes" extends = "Person">
    <cfprocessingdirective pageencoding="utf-8" />

    <cfproperty  name="schule" type="string">
    
       

    <cffunction  name="besuchen">
        <cfargument  name="schule" type="string" required="false"> 
            <cfset this.schule = arguments.schule>
        <cfreturn this>
    </cffunction>

    <cffunction  name="anzeigen">
       <cfoutput>
          <u> Anzeige für eine(n) Schüler(in) :</u> <br>
            <cfset uberMich() />
        
            ich besuche die <b> #this.schule#</b> -schule
        </cfoutput>
    </cffunction>



    <cffunction name="onMissingMethod">
        <cfargument name="missingMethodName"/>
        <cfargument name="missingMethodArguments"/>

        <cfoutput>
        onMissingMethod() aufgerufen - #arguments.missingMethodName#
        <hr>
        </cfoutput>
    </cffunction>
    
</cfcomponent>
