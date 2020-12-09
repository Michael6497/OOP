
<cfcomponent accessors = "yes" initMethod = "init">
    <cfprocessingdirective pageencoding="utf-8" />


    <cfproperty  name="name" type="string" setter="true" />
    <cfproperty  name="vorname" type="string" setter="true" />
    <cfproperty  name="alter" type="numeric"/>
       
        
    <cffunction  name=init >
        <cfargument  name="name" type="string" >
        <cfargument  name="vorname" type="string" >
        <cfargument  name="alter" type="numeric" >

            <cfset this.name = arguments.name />
            <cfset this.vorname = arguments.vorname />
            <cfset this.alter = arguments.alter />

     <cfreturn this>

    </cffunction>

    <cffunction  name=uberMich access="private">

        <cfoutput>
            ich bin <b> #this.vorname# &nbsp;#this.name#, #this.alter# </b> <br>
        </cfoutput> 
    </cffunction>

</cfcomponent>