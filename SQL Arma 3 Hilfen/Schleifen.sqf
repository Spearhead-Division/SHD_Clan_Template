//------Wenn_dann_ansonsten------------------
if (Funktion Objektname) then
{
	hint "Ausf�hrung wenn ja"
}else{
	hint "Ausf�hrung wenn nein"
};

//------Case--------------------------------
switch (_var) do
{
	case 1 : {hint "Anweisung 1"};
	case 2 : {hint "Anweisung 2"};
	default { hint "Standard Wert"}
};

//------While schleife-------------------------
While (Funktion Objektname) do
{
	hint "Ausf�hrung"
};

//------for schleife---------------------------
for [{ i = 0},{Bedingung},{Schrittgr��e}] do
{
	hint "Ausf�hrung"
};

//-------foreach schleife--------------------
{
	aktion a;
} foreach  _array

//------Variablen-------------------------------
_var = "Inhalt"; //Local 
var = Inhalt; //Global (Namen der Objekte sind auch Global)

//-----Array----------------------------------
_array1 = [1,2,3,4];
_array2 = ["Hallo","Welt"]

//Array aufrufen

_array1 select 0 == 1 == true;
_array1 select 4 == 5 == true;
