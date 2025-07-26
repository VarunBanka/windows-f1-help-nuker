# 💣 windows-f1-help-nuker

**Nukes the F1 key’s Help pop-up on Windows.**  
Because launching Microsoft Edge mid-game sucks.

> Made after hitting F1 while playing CS2 on a laptop.  
> Never again.
---

## 📂 Files

- **DisableF1Help.bat**  
  Kills `HelpPane.exe`, takes ownership, denies execution, and adds a registry block.

- **EnableF1Help.bat**  
  Removes the registry block and restores original file permissions.

---

## 🚀 Quick Start

1. **Download** the `.bat` files.  
2. **Right‑click** on `DisableF1Help.bat` → **Run as Administrator**  
3. **Restart** Windows  

> F1 is now harmless.

---

## 🔄 Revert

1. **Run** `EnableF1Help.bat` as Administrator  
2. **Restart** Windows  

> HelpPane.exe returns to its default state.

---

## 📝 Details

- **Process**: uses `taskkill` to terminate HelpPane.exe.  
- **Permissions**: `takeown` + `icacls` to block execution.  
- **Registry**: creates an `Image File Execution Options` Debugger entry.  
- **Compatibility**: Windows 10 / 11 (desktop & laptop).

---

## ⚠️ Disclaimer

These scripts modify system file permissions and the Windows registry.  
Use at your own risk. Back up your system or set a restore point first.

---

> Created in frustration after an accidental F1 mid‑clutch.  
> No more unwanted Edge help windows.
