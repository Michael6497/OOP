

<cfcomponent accessors = "yes" extends = "Student" >

    <cfprocessingdirective pageencoding="utf-8" />

    <cfproperty  name="jahre" type="year">
    
       
        

    <cffunction  name="aufhoren">
       <cfargument  name="jahre" type="year"> 
           <cfset this.jahre = arguments.jahre>
        
    </cffunction>

    <cffunction  name="anzAlteStudent">
        <cfoutput>
            
            <cfset anzeigen() />
          
              ich  habe im <b>#this.jahre#</b> -aufgehört.
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