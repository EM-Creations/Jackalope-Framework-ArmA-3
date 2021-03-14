// AUTHOR: StatusRed (EM-Creations.co.uk)

// Register this module
["Knock Down", "1.0", "Allows melee knocking out of units.", "StatusRed, Krause"] call FNC_RegisterModule;

if (hasInterface) then { // As this module is client-side only, only continue if this is a client
	#include "settings.sqf"

	if ((side player) in TBC_KNOCKDOWN_TEAMS) then { // If this player is in the list of teams who can use the knock down feature
		//hint "Registering action..";
		["Jackalope Framework", "knock_down", "Knock Down", { [TBC_KNOCKDOWN_WEAPONS, TBC_KNOCKDOWN_REVIVE_ACTION] execVM "modules\knock_down\action.sqf";  }, "",
		[TBC_KNOCKDOWN_KEY, [TBC_KNOCKDOWN_KEY_SHIFT, TBC_KNOCKDOWN_KEY_CONTROL, TBC_KNOCKDOWN_KEY_ALT]]] call CBA_fnc_addKeybind;
	};

} else {
	// Do nothing.
};
