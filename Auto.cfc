<cfcomponent accessors = "true" implements="IAuto" initMethod ="init">

    <cfprocessingdirective pageencoding="utf-8" />

    <cfproperty  name="modell" type="string" >
    <cfproperty  name="jahr" type="date" >
    <cfproperty  name="PS" type="numeric" >
    <cfproperty  name="farbe" type="string" >
    <cfproperty  name="geschwindigkeit" type ="numeric" required="no" default="0">


            <cffunction  name="init" access ="public">
                <cfargument  name="modell" type ="string" required="yes">
                <cfargument  name="jahr" type ="date" required="no">
                <cfargument  name="PS" type ="numeric" required="no">
                <cfargument  name="farbe" type ="string" required="no">
                

                    <cfset this.modell = arguments.modell />
                    <cfset this.jahr = arguments.jahr />
                    <cfset this.PS = arguments.PS />
                    <cfset this.farbe = arguments.farbe />
                    <cfset this.geschwindigkeit = 0 />

                <cfreturn this >    
            </cffunction>

            <cffunction  name="starten" access ="public">
                <cfargument  name="wertInitial" type ="numeric" default ="10" required="no">
                
                    <cfset this.geschwindigkeit = arguments.wertInitial />
                <cfreturn this > 
            </cffunction>

            <cffunction  name="anhalten" returntype ="numeric" access ="public">
                    <cfset this.geschwindigkeit = 0 />
                <cfreturn this > 
            </cffunction>


            <cffunction  name="gasGeben" returntype="numeric">
                <cfargument  name="wert" type ="numeric" default ="10" required="no" >
                     
                <cfif this.geschwindigkeit GE 200 >
                    <cfoutput>
                       <u>/!\</u> Geschwindigkeit über 200km/h - kann nicht mehr erhöht werden.
                       <cfset this.geschwindigkeit = 200 />
                    </cfoutput>
                <cfelse>
                    <cfset this.geschwindigkeit += arguments.wert />   
                </cfif>
                        <!---   nach der Berechnung, wenn das Ergebnis noch über 200 ist --->
                <cfif this.geschwindigkeit GT 200 > 
                    <cfset this.geschwindigkeit = 200 />
                </cfif>    

                <cfreturn this.geschwindigkeit />

            </cffunction>


            <cffunction name = bremsen returntype = "numeric"> 
                <cfargument name = "wert" type = "numeric" required = "no" default = "10"> 

                <cfif this.geschwindigkeit LE 0 >
                    <cfoutput>
                       <u>/!\</u> Geschwindigkeit 0 km/h - kann nicht mehr reduziert werden.
                       <cfset this.geschwindigkeit = 0 /> 
                    </cfoutput>
                <cfelse>
                    <cfset this.geschwindigkeit -= arguments.wert /> 
                </cfif>
                        <!---   nach der Berechnung, wenn das Ergebnis noch unter 0 ist --->
                <cfif this.geschwindigkeit LT 0 > 
                    <cfset this.geschwindigkeit = 0 />
                </cfif>   
                
                <cfreturn this.geschwindigkeit />

            </cffunction>

            <cffunction  name="getGeschwindigkeit" returntype="numeric">
                 
                <cfif this.geschwindigkeit LE 0 >
                    <cfset this.geschwindigkeit = 0 /> 
                <cfelseif this.geschwindigkeit GE 200 >
                    <cfset this.geschwindigkeit = 200 /> 
                </cfif>

                <cfreturn this.geschwindigkeit />

            </cffunction>

            <cffunction name = parken returntype = "numeric" > 
                <cfargument name = "wert" type = "numeric" required = "no" default="10"> 
                <cfargument name = "ort" type = "string" required = "no" default=""> 
                        <cfoutput>
                            Auto am Parkplatz
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