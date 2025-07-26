<#
.SYNOPSIS
    Set Finnish keyboard layout as the default input method while keeping English as the system UI language.

.DESCRIPTION
    This PowerShell script sets the Windows UI language to English (en-US) and the default keyboard layout to Finnish (040b:0000040b).
    It also optionally restores the taskbar language bar if desired.

.NOTES
    Tested on Windows 11 with a Finnish physical keyboard.
#>

# Configure user language preferences: keep UI in English and add Finnish keyboard layout
$LangList = New-WinUserLanguageList en-US
$LangList[0].InputMethodTips.Clear()
$LangList[0].InputMethodTips.Add("040b:0000040b")  # Finnish Keyboard Layout
Set-WinUserLanguageList $LangList -Force

# Set Finnish keyboard as the default input method
Set-WinDefaultInputMethodOverride -InputTip "040b:0000040b"

# Optional: To make the language bar visible again, add a second layout or enable manually in settings
# To do it via registry (uncomment to enable):
# Set-ItemProperty -Path "HKCU:\Software\Microsoft\CTF\LangBar" -Name ShowStatus -Value 4
