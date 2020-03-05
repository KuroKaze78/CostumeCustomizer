Title: Costume Customizer Mod for DOAXVV
Version: v1.9.1
Released: 3/4/2020

Topic Forum: https://www.loverslab.com/topic/109195-costume-customization-mod/
Download Page: https://www.loverslab.com/files/file/7305-costume-customizer-framework-mod/

***************
* Description *
***************
This mod allows you to mix-and-match portions of suits that have been provided by the CostumeCustomizer mod-packs you've included. It replaces the Takao R Suit (Black/Red Bikini w/ Pareo). It uses a 2D overlay menu to customize your outfit to your liking.

***************
* How to Use  *
***************
Have the correct swimsuit displayed on-screen before attempting to use any of the keyboard shortcuts.

Keyboard Shortcuts:
F3 - Cycle Clothing Menu*

Note*: If multiple different model-types are available to customize clothing, the F3 button will cycle between each currently on-screen model type and off
  - Common Body Type Customization menu
  - Honoka Body Type Customization menu
  - Marie Rose Body Type Customization menu
  - Menu Off

With menu open:
` (backtick)         Switch to preset menu
CTRL + 1             Switch to Shirts/Dresse menu
CTRL + 2             Switch to Bra menu
CTRL + 3             Switch to Panty menu
CTRL + 4             Switch to Skirt menu
CTRL + 5             Switch to Glove menu
CTRL + 6             Switch to Shoe/Stocking menu
CTRL + 7             Switch to Accessory 1 menu
CTRL + 8             Switch to Accessory 2 menu
CTRL + 9             Switch to Accessory 3 menu
CTRL + 0             Switch to Accessory 4 menu

Choosing the same category as the current category will cycle between the available pages of options:
  - Mod Packs 1-24
  - Mod Packs 25-48
  - Mod Packs 49-72
  - Mod Packs 73-96

While mouse is hovering over an item:
1          Wear option 1
2          Wear option 2
3          Wear option 3
4          Wear option 4
5          Wear option 5
6          Wear option 6
7          Wear option 7
8          Wear option 8
9          Wear option 9
0          Wear option 10
Shift + 1  Wear option 11
Shift + 2  Wear option 12
Shift + 3  Wear option 13
Shift + 4  Wear option 14
Shift + 5  Wear option 15
Shift + 6  Wear option 16
Shift + 7  Wear option 17
Shift + 8  Wear option 18
Shift + 9  Wear option 19
Shift + 0  Wear option 20

***************
* Change Log  *
***************
v1.9.1 - (3/4/2020)
Fixed issue with presets not saving properly with up-to-date Mod-Pack INI logic.

v1.9 - (3/1/2020)
Expanded maximum number of available mod-packs to 96 from 24 and implemented pages to cycle between each group of 24. Switching category will display mod-packs 1-24, pressing the key command for that same category will cycle to the next page up to page and loop around (pages: 1-24, 25-48, 49-72, 73-96). Fixed an issue with the preview display of Mod-Pack 3. Fixed an issue with extremity clothing shadows not casting properly. Consolidated key commands and deconflicted menu when multiple body-types are using CostumeCustomizer and the user attempts to utilize the menu (Pressing F3 will cycle between customization menus currently available on screen). Increased available options and adjusted keyboard shortcuts. Preset category hotkey changed to backtick (`) with any modifier as CTRL+` doesn't function with the Japanese IME active.

v1.8 - (2/20/2020)
Added support for Sayuri skin overrides. PS1 and PS2 textures now default to emtpy normal and specular maps so there shouldn't be any issues for shaders if they aren't overridden in a ModPack.

v1.7 - (8/18/2019)
Added support for Monica skin overrides. Corrected keybindings so selecting option 11/12 are done using the -/+ on the number row rather than NUMPAD.

v1.6 - (4/26/2019)
Added support for Kanna skin overrides. Switched Custom Shaders to Global ShaderRegex. This is to fix an issue regarding shadows not being applied to the alpha-enabled clothing drawn from custom shaders. I couldn't seem to find a different way to fix it while still using custom shaders so this is the result. This does mean that all other draw calls will be subject to the Shader modification. The modification replaces the cb2 buffer for the cb12 buffer for most pieces except for a handful of items that were determined to be dynamic based on the scene. Those items will be derived from the original cb2 buffer.

v1.5.1 - (1/14/2019)
Fixed issue with multiple characters on screen at the same time.

v1.5 - (1/13/2019)
Added support for custom Tan textures and skin textures per body mesh. Skin Textures are per character skin, (which means there will need to be a minor update for each new character added). However Misaki and Kasumi use the same skin, so those will still be shared. Custom Default Constant Buffer support is also added. This allows altering several properties used in the pixel shader including minor color manipulation, Specular Color, and Fresnel. Some properties may be deprecated when it becomes more apparent whether they should be allowed to be overridden or whether they should stay the value they are in game.

v1.4 - (1/6/2019)
Cleaned up logic for "else if", added support for persist variables so now the current outfit will maintain between play sessions. Currently still compatible with CCModPackGenerator v1.0.1.

v1.3.1 - (12/2/2018)
Changed packaging structure so installation is just extract main zip/patch into root of DOAXVV game folder.

v1.3 - (11/10/2018)
New menu graphics provided by IceTree5
Split Chest into 2 secions (backwards compatible with the original 1 replacement)

v1.2 - (10/24/2018)
Fixed Default load when reloading with F10. 

v1.1 - (10/20/2018)
Initial Release supporting all 3 body types
Added Marie Rose, Luna, and Honoka Support. Fixed draw order of the alpha pieces. Order is Panty -> Bra -> Skirt -> Chest -> Acc1 -> Acc2 -> Acc3 -> Acc4.

v1.0 - (10/13/2018)
Initial Release supporting common body.
Supports 1 page each for presets and 10 categories, each page supports 24 items, each item supports 12 options.
