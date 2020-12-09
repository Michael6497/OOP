

<cfcomponent accessors = "yes" extends = "Person" >

    <cfprocessingdirective pageencoding="utf-8" />

    <cfproperty  name="uni" type="string">
    
       
        

    <cffunction  name="studieren">
       <cfargument  name="uni" type="string"> 
           <cfset this.uni = arguments.uni>
        
    </cffunction>

    <cffunction  name="anzeigen">
        <cfoutput>
            <u>Anzeige für eine(n) Student(in) : </u> <br>
            <cfset uberMich() />
          
              ich studiere an der <b>#this.uni#</b> -Universität <br>
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