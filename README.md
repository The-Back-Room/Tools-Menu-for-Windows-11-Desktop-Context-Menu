# Tools and Utilities Context Menus
for Windows 10 and 11

![](<img src="Previews/c25EEQZmeQ.png" width="45%">)
![](<img src="Previews/jgrycwDiQ8.png" width="45%">)

### Tools Menu
- Classic Personlization Menu
  - Theme Settings
  - Color and Appearance
  - Desktop Background
  - Desktop Icon Settings
  - Mouse Pointers
  - Notification Area Icons
  - Screen Saver Settings
- Control Panel Menu
  - Category
  - All Items
  - All Tasks (God Mode)
- MicaForEveryone Menu | Addon
  - Start MicaForEveryone
  - Stop MicaForEveryone
- Old New Explorer | Addon
- DWMBlurGlass | Addon

### Utilities Menu
- Kill Not Responding Tasks
- Refresh Icon Cache
- Restart Explorer
- Restart Explorer 7 | Addon

## Installation
- To install simply download the archive and extract the `Tools` folder into the root of your system drive; `C:\`.
  - To add the Tools menu to your desktop context menu, simply double-click the `Add Tools Menu to Desktop Context Menu.reg` file.
  - To add the Utilities menu to your desktop context menu, simply double-click the `Add Utilites Menu to Desktop Context Menu.reg` file to add the Utilities.
  - To install the addons, simply double-click the registry file to add whichever addons you want.

## Uninstallation
- To remove the Tools menu simply double-click the `Remove Tools Menu from Desktop Context Menu.reg` file.
- To remove the Utilities menu simply double-click the `Remove Utilities Menu from Desktop Context Menu.reg` file.
- To remove the addons without removing the Tools or Utilities menus, simply double-click the registry file to remove whichever addons you want to remove.

**Download**: [Download ZIP](https://github.com/The-Back-Room/Tools-and-Utilities-Menus-for-Windows-11-Desktop-Context-Menu/archive/refs/heads/main.zip)

### Important Note
*The `Explorer 7`, `DWMBlurGlass`, and `Old New Explorer` options are called on from subdirectories located inside the Tools/src subfolder. Files have been included for compatibility; however, you may need to update them for your own usage.<br />
The `MicaForEveryone` menu relies on the MSI variation that is installed in a system location, as such it doesn't specify the location but instead the `MicaForEveryone.App.exe` process created by the MSI installation method. For this reason, manual installations of MicaForEveryone might not be compatible with this menu.<br />
Due to Windows context menu limitations, addons may remove entrees from some of the sub menus in order to make space. Keep in mind that if you want to use all of the addons with both menus the Theme Settings option in the Classic Personalization sub menu may disappear.*
