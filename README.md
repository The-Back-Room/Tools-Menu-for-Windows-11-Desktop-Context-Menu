<div align="center">
    <h1>Tools and Utilities Context Menus</h1>
    <p>for Windows 10 and 11</p>
    <br />
    <img src="Previews/c25EEQZmeQ.png" width="45%"> <img src="Previews/jgrycwDiQ8.png" width="45%">
</div>

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

<div align="center">
    <details>
        <summary>
            <h2>Important Note</h2>
        </summary>
        <em>The <code>Explorer 7</code>, <code>DWMBlurGlass</code>, and <code>Old New Explorer</code> options are called on from subdirectories located inside the <code>Tools/src</code> subfolder. Files have been included for compatibility; however, you may need to update them for your own usage.
        <br /><br />The <code>MicaForEveryone</code> menu relies on the <code>.msi</code> variation that is installed in a system location, as such it doesn't specify the location but instead the <code>MicaForEveryone.App.exe</code> process created by the <code>.msi</code> installation method. For this reason, manual installations of <code>MicaForEveryone</code> might not be compatible with this menu.
        <br /><br />Due to Windows context menu limitations, addons may remove entrees from some of the sub menus in order to make space. Keep in mind that if you want to use all of the addons with both menus the Theme Settings option in the Classic Personalization sub menu may disappear.</em>
    </details>
</div>
