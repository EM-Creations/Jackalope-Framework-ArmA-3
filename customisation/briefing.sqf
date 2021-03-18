#include "core\briefingCore.sqf" // DO NOT REMOVE

switch (side player) do { // Checks what team the player is on

  case blufor: { // If player is blufor they receive this briefing
    NEWTAB("I. Situation:")
    <font color='#BBBBBB' size='16' face='PuristaBold'>This is an example header:</font><br/>
    <br/>
    Example text.
    <br/><br/>
    This is how you display a <marker name='markerName'>marker</marker>.
    <br />
    This is how you display an image:
    <br /><br />
    <img image='core\jackalope-logo-200.jpg' width='165' height='200' />
    ENDTAB;

    NEWTAB("A. Enemy Forces:")
    // Text goes here
    ENDTAB;

    NEWTAB("B. Friendly Forces:")
    // Text goes here
    ENDTAB;

    NEWTAB("II. Mission:")
    // Text goes here
    ENDTAB;

    NEWTAB("III. Execution:")
    // Text goes here
    ENDTAB;

    NEWTAB("IV. Service Support:")
    // Text goes here
    ENDTAB;

    NEWTAB("V. Command & Signal:")
    // Text goes here
    ENDTAB;

  }; // End of blufor case

  case opfor: { // If player is opfor they receive this briefing
    // Opfor briefing here
  };

  case independent: { // If player is independent they receive this briefing
    // Independent briefing here
  };

  case civilian: { // If player is civilian they receive this briefing
    // Civilian briefing here
  };

}; // End of switch

NEWTAB("VI. Mission notes:") //  This is shown for everyone
// Text goes here
ENDTAB;

NEWTAB("Changelog") // This is shown for everyone
// Use this space to explain changes between versions of your mission
<font color='#FFF' size='14' face='RobotoCondensedBold'>Version 1c:</font>
<br />
- EXAMPLE End condition bug fixed
<br /><br />
<font color='#FFF' size='14' face='RobotoCondensedBold'>Version 1b:</font>
<br />
- EXAMPLE Loadouts changed
<br />
- EXAMPLE AI difficulty increased
ENDTAB;

NEWTAB("Game Mastering") // This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();
