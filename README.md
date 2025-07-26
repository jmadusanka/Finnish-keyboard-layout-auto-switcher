# 🇫🇮 Windows Finnish Keyboard Auto Switcher

This repository provides a PowerShell script that automatically sets the **Finnish keyboard layout** as the default input method **while keeping the Windows UI in English**. It's a lightweight and efficient solution for international users living in Finland who want to match their physical keyboard without changing system language.

---

## 🔧 Features

- ✅ Keeps Windows interface in **English**
- ✅ Sets **Finnish keyboard layout** as the default input method
- ✅ Runs automatically at every login (via Task Scheduler)
- ✅ Optional: Enables the taskbar language bar
- ✅ Clean, reversible, and easy to deploy

---

## 📌 Why This Is Needed

Many users—especially **expats**, **students**, and **developers** in Finland—buy laptops with a **Finnish physical keyboard**, but prefer to keep the **Windows UI in English**.

### 💡 Problem:
After every reboot or login, Windows may:

- Default to the **English (US)** keyboard layout  
- Force the user to manually switch to the **Finnish keyboard**

### ✅ Solution:
This script runs **at every login**, ensuring:

- Windows stays in **English**
- Keyboard layout is switched to **Finnish automatically**
- No manual switching required
- Improves typing accuracy and productivity

---

## 📂 Files

| File                        | Description                                                  |
|-----------------------------|--------------------------------------------------------------|
| `ChangeKeyboardLayout.ps1`  | PowerShell script that applies the layout change             |
| `README.md`                 | This documentation file                                      |
| `SetFinnishKeyboardTask.xml`| (Optional) Task Scheduler XML to automate script at logon    |

---

## 📥 How to Use

### Step 1: Run the Script Once

1. Download or clone this repository
2. Right-click on `ChangeKeyboardLayout.ps1` → **Run with PowerShell (as Administrator)**
3. Restart or log out and back in to see the effect

---

## ⚙️ Automate with Task Scheduler

### Step-by-Step

1. Open **Task Scheduler** (`Win + R → taskschd.msc`)
2. Click **Action > Create Task**
3. On **General** tab:
   - Name: `Set Finnish Keyboard at Login`
   - ✔️ Check “Run with highest privileges”
   - Configure for: `Windows 11`
4. On **Triggers** tab → New → `At log on`
5. On **Actions** tab → New:
   - Program/script: `powershell.exe`
   - Add arguments:  
     ```
     -ExecutionPolicy Bypass -File "C:\Path\To\ChangeKeyboardLayout.ps1"
     ```
6. Click OK and test by logging out and back in

### Optional: Use Prebuilt Task

You can import the `SetFinnishKeyboardTask.xml` file directly:

- In Task Scheduler → Click **Import Task**
- Select the XML file
- Update the script path in the **Actions** tab
- Save and enable the task

---

## 📝 License

This project is licensed under the **MIT License**. Feel free to use, modify, and share.

