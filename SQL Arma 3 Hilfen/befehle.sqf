{//------Variablen--------------------------------------------------------
_var = "Inhalt"; 		//Local 
var = Inhalt;			//Global (Namen der Objekte sind auch Global)
}
{//------Text ausgabe:-----------------------------------------------------
hint "Text Ausgeben";													//Allgemein
hintc "Text Ausgeben";													//Fenster mit weiter Button
"Text Überschrift" hintc ["Text1","Text2","Text3"];						//Fenster mit überschrift und 3 geliederten Punkten mit weiter button
hint format ["%1 Text mit Variable ausgeben",_var];						//Allgemein mit Variablen
_object vehicleChat format ["bestimmte Fahrzeug Text Ausgabe", _type];  //_Objekt ist das Fahrzeug

"<t size='1.5' shadow='2' color='#5858FA'>Text Ausgabe</t>" 			//Eigenschaften der Texte
}
{//------Bild ausgabe:-----------------------------------------------------
this setFlagTexture "Bilddatei.jpg"; //Fahne
this setObjectTexture [0, "Bilddatei.jpg"]; //Objekt Textur
}
{//------Objekt kann nicht zerstört werden----------------------------------
this allowDamage false;
this enableSimulation false;
}
{//------Objekt Position---------------------------------------------------
this setPos [getPos this select 0, getPos this select 1, X]; //X = Höhenposition
}
{//------Script initialisieren (In Auslöser, Objekten, Einheiten oder init.sqf)
nul = [] execVM "Scriptname.sqf"; 						//nul der Name des scriptes

//addaction nur local und könnten Multiplayer Probleme aufrufen
this addaction ["Auswahl Name","script.sqf"]; 			//Für Objekte im Editor
_object addaction ["Auswahl Name","script.sqf"]; 		//für Variablen

_this select 0 --> Objekt an dem Aktion haftet
_this select 1 --> der Aufrufer der Aktion
_this select 2 --> die Aktion selber
}
{//------Virtual Arsenal Aufrufen--------------------------------------------
this addAction ["Virtual Arsenal Öffnen", {["Open",true] spawn BIS_fnc_arsenal}];
}
{//------Such Funktion--------------------------------------------------------
nearObject [in_der_nähe;"Wer"] 						
//in_der_nähe[Variable, ID, player] -> ist wird 50m um den gesucht 
//"wer" [Classname, Name, ID] -> was gesucht wird
//Ausgabe ist der gefundene Name

nearObjects [player, ["car","Truck"],200]; //200 ist der suchbereich ansonsten wie oben
}