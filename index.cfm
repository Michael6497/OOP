<cfprocessingdirective pageencoding="utf-8" />

<cfset student1 = new alteStudent("Misa", "El", 15) />
<cfset student1.studieren("Goethe") /> 
<cfset student1.aufhoren(1996) /> 

<cfset azubi1 = new Azubi(name="Stella", vorname="Annie", alter=22) />
<cfset azubi1.besuchen( schule="VWS-Schule") /> 

<cfobject  component ="Auto" name="auto1"/>
    <cfset  auto1.modell  = "Audi Q7"/>
    <cfset  auto1.jahr  = 1998 />
    <cfset  auto1.PS  = 400/>
    <cfset  auto1.farbe  = "orange"/>

<!---     <cfset  auto1 = new Auto("modell1", 1992, 250, "Grün") /> --->
    
   

<cfoutput>
   
    #student1.anzAlteStudent()# <hr>

    #azubi1.anzeigen()# <hr>

    ich fahre jetzt <br>
    Mein Auto ist <b>#auto1.modell#</b>  <b>#auto1.farbe#</b> vom <b>#auto1.jahr#</b> <br>
    starten:  <br>

    <cfset a = auto1.starten(7) />
    #a.getGeschwindigkeit()#  <br>
    #a.gasGeben(150)# <br>
    #a.bremsen(10)# <br>
    #a.gasGeben(120)# <br>
    #a.bremsen(20)# <br>
<!---     #a.anhalten()# <br> --->
<!---     #a.parken()# <br> --->


<!---     <cfset b = auto1.gasGeben(25) /> --->
<!---     #b.getGeschwindigkeit()# --->

<!---     #auto1.getGeschwindigkeit()# --->
<!---     <cfinvoke  method="starten" component="Auto"/> --->
     
<!---     <cfinvoke  method="gasGeben" component="Auto" > --->

    
<!---  <cfinvoke  method="getGeschwindigkeit" component="Auto" >  --->
      




</cfoutput>