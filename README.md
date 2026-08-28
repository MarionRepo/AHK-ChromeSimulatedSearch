# AHK-ChromeSimulatedSearch
This is a AutoHotkey v2 script that programmatically opens a Chrome tab using a hotkey and searches whatever is entered in the variable. 

### Why did I make it:
I mainly made this script to save time and keystrokes to search for things such as the weather as it is a daily task. But I also wanted to expand my knowledge of the language and see what tasks AutoHotkey can handle.

### What I learned:
- Wait time and typing matters in this use-case so setting a sleep/down-time to let everything load is a must
- As a result from testing I learned I did not need to include the step where I have to mouse up and mouse down or locate the mouse on the search bar in order to start typing, the search bar is automatically highlighted
- The string that is parsed through and entered into the search bar does not need to be separated, it can be one continuous string with spaces
- A **Loop Parse** iteration is better to use than a for loop for this case due to the availability of built-in variables like **A_LoopField** and **Loop Parse**

### What went well:
- Choosing the right time to simulate real-time typing
- Using **Send** to type in the search bar and to open and activate chrome while also using the built-in **Win** functions

### What went poorly:
- A minor problem I ran into was how sometimes starting up the Chrome application would be slow so the program would begin to type the string into the search bar but it would miss letters due to application not being ready. My solution was adding a **Sleep(100)** timer immediately after the **WinActivate** line to allow for the window to load before typing is started
- If the script was running I would lose the ability to undo any changes because **Ctrl+z** was first used as the hotkey, so I changed the hotkey to **w**

### What did I use:
- AutoHotkey v2 (2.0.26 64 bit)
  - Hotkey (Ctrl+z)
  - Win Functions
  - If statement
  - Loop Parse function
- VS Code (1.129.0 64 bit)
- Chrome (151.0.7922.72 64 bit)
- Windows 11

### How to use:
- Install AutoHotkey v2
- Run code in a supported environment
- Type **Ctrl+z**
- Exit the AHK script manually by (on Windows) going to the hidden icon area and right click and select **Exit**
