#Requires AutoHotkey v2.0
#SingleInstance force

; Map Copilot (Win+Shift+F23) to Right Ctrl
*<+<#F23::Send "{Blind}{LShift Up}{LWin Up}{RControl Down}"
*<+<#F23 Up::Send "{RControl Up}"
