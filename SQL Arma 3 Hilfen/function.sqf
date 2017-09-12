{//-------Inline-Function------------------------------

//MyFunction.sqf///////////////////
private["_var1","_var2","_return"]; //private heißt Zwingt die Variablen in der Function zu bleiben
_var1 = _this select 0;
...
mein code;

_return;
////////////////////////////
//Init.sqf/////////////////
myfunction = compile preprocessfile "myfunction.sqf";
_result=[_parm] call myfunction;
/////////////////////////////

//deklarierung meiner Funktion
myFunction {
	_parameter = _this
	mein code;
	_return;
};
//Funktion Benutzen
_result  [_parameter]call myFunktion;	// mit rückgabewert
_result  [_parameter]spawn myFunktion; //Kein rückgabewert wie void
//Beispiel

add_function = {

	_number1 = _this select 0;
	_number2 = _this select 1;

	_return = _number1 + _number2;
	_return;
};

_result = [1,2] call add_function;

hint format ["%1",_result];
}/////////////////////////////////////////////////////