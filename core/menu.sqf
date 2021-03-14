private ["_info"];

player createDiarySubject ["FW_Menu", "Jackalope Framework"];

_info = "
<img image='core\jackalope-logo-200.jpg' />
<br /><br />
<font size='18'>Welcome to Jackalope Framework!</font><br/>
Jackalope Framework is a simple framework designed for ArmA 3, based on the Olsen Framework, optimised for The Global Conflicts community. It supports modules and is easy to configure.<br/>
<br/>
Find out more about the framework on GitHub.<br/>
github.com/EM-Creations/Jackalope-Framework-ArmA-3<br/>
<br/>
Current Version: 1.0.0 DEV
";

player createDiaryRecord ["FW_Menu", ["Framework Info", _info]];
