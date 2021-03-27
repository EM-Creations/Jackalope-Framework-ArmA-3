/*
 * Author: PiZZADOX & StatusRed
 * Spawns an array of unit types and olsen gear types
 *
 * Arguments:
 * 0: Group Spawn Position <Position>
 * 1: Unit Array in nested format <ARRAY> ([<unit classname>, <gear type>])
 * 2: Side <Side> (default: east)
 *
 * Return Value:
 * Group
 *
 * Example:
 * [[0, 0, 0], [["B_W_Officer_F", "BAF_PL"], ["B_W_Medic_F", "BAF_MED"]], east] call FNC_SpawnUnits;
 *
 * Public: Yes
 */
params [["_groupPos", [0, 0, 0], [[]]], ["_units", [], [[]]], ["_side", east, [east]]];

private _group = createGroup _side;

diag_log format ["Spawning %1 units", count _units];

_units apply {
    _x params ["_type", "_gear"];
    diag_log format ["Spawning: %1 with gear: %2", _type, _gear];
    private _unit = _group createUnit [_type, _groupPos, [], 15, "NONE"];
    _unit call FNC_trackUnit;
    [_unit, _gear] call FNC_GearScript;
};

_group
