["Set Identity", "1.0", "Sets unit faces and voices for units of a side.", "PiZZADOX"] call FNC_RegisterModule;

// DO NOT edit the below - See the settings.sqf file
if (isServer) then {
  #include "settings.sqf"

  if (missionNamespace getVariable ["FW_FaceSetting_Enabled", false]) then {
      [{
          {
            _x params [["_faceArray", [], [[]]], ["_voicesArray", [], [[]]], ["_side", opfor, [opfor]]];
            if (!(_faceArray isEqualTo []) || !(_voicesArray isEqualTo [])) then {
              allUnits select {
                  alive _x &&
                  {!(_x getVariable ["FW_FaceExclude", false])} &&
                  {!((group _x) getVariable ["FW_FaceExclude", false])} &&
                  {(side _x) isEqualTo _side}
              } apply {
                  if !(_faceArray isEqualTo []) then {
                      private _faceSelected = selectRandom _faceArray;
                      diag_log format ["Setting face %1 on %2", _faceSelected, _x];
                      [_x, _faceSelected] remoteExec ["setFace", 0, _x];
                  };
                  if !(_voicesArray isEqualTo []) then {
                      private _voiceSelected = selectRandom _voicesArray;
                      [_x, _voiceSelected] remoteExec ["setSpeaker", 0, _x];
                  };
              };
            };
          } forEach [
              [FW_Faces_BLUFOR, FW_Voices_BLUFOR, blufor],
              [FW_Faces_OPFOR, FW_Voices_OPFOR, opfor],
              [FW_Faces_INDFOR, FW_Voices_INDFOR, independent],
              [FW_Faces_CIV, FW_Voices_CIV, civilian]
          ];
      }, []] call CBA_fnc_execNextFrame;
  };
};
