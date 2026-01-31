# Batch-Stuff

A set of batch scripts to create a custom Windows Command Prompt terminal with enhanced navigation, command shortcuts, and update functionality.

---

## ⚠️ Security Notice

This project:

- Downloads and executes batch files from this repository.
- Can auto-update if explicitly enabled.
- Generates executable files using IExpress.
- Deletes installer scripts after execution.

If you do not understand or trust this behavior, **DO NOT RUN IT**.

## Trust & Source

Only download scripts from the official repository:

https://github.com/Glitch872/Batch-Stuff

This project does **not** include cryptographic verification.
Updates are trusted based on the integrity of this repository.


## Features

- **Custom Terminal (`CMD.bat`)**
  - Persistent, colorized prompt with custom title.
  - Quick navigation:
    - `~` → Go to user profile directory
    - `~1` → Go to AppData directory
    - `~2` → Go to System32 directory
    - `~~` → Open File Explorer in the current directory
  - Command shortcuts:
    - `update` → Update the terminal to the latest version
    - `update-all` → Update all related scripts
    - `repair` → Reinstall terminal scripts
    - `uninstall` → Remove all terminal files
    - `auto-update` → Toggle auto-update on/off
    - `find` → Search for files across the system
    - `ls` → List files in current directory (`dir /w`)
    - `clear` → Clear the terminal
    - `?` → Display a list of all custom commands
    - `min` → Install a less feature rich version of the Custom CMD
- **`user-level` Command**
  - Run a file from the current directory **without admin rights**.
  - Usage:
    1. Place the file you want to run in a folder.
    2. `cd` into that folder in the terminal.
    3. Run the command `user-level`.
    4. Enter the file name when prompted.
  - ⚠️ Works only for files that do not strictly require admin privileges.

---

## Installation

1. Run `install.bat` from your **Desktop folder**.  
   > ⚠️ The installer must be on your Desktop; it will not run correctly from other locations.
2. The installer will:
   - Create a folder: `Desktop\Custom CMD Terminal\.bat`
   - Generate:
     - `CMD.bat` → Main terminal script
     - `log.bat` → File compiler / directory listing
   - Start the terminal automatically

---

## File Structure

After installation, the folder tree looks like this:

%userprofile%\Desktop\Custom CMD Terminal\\.bat

%userprofile%\Desktop\Custom CMD Terminal\.bat\CMD.bat

%userprofile%\Desktop\Custom CMD Terminal\.bat\log.bat

--

Other files in the repository (`install.bat`, `update.bat`) are used for installation, updates, and minimal setup.

- `SCMD.exe` is the main executable entry point to start the terminal.

---

## Usage

- Open the terminal by running `SCMD.exe`.
- Use the custom commands to navigate, run scripts, or perform updates.
- Use `user-level` to run a program from the current directory **without admin rights** (works for some files):
  1. Place the file in a folder.
  2. `cd` to that folder.
  3. Run `user-level` and type the file name.
- Type `?` in the terminal to see all available custom commands.

---

## Updating

- `update` → Update the terminal script itself
- `update-all` → Update all related scripts (setup, installer, etc.)
- `auto-update` → Enable or disable automatic updates on startup

---

## Uninstallation

- Run `uninstall` in the terminal to:
  - Delete the `Custom CMD Terminal` folder
  - Remove helper files in your user profile
  - Clean up auto-update files

---

## Notes

- Designed for **Windows**, using native batch commands (`cmd`, `doskey`, `curl`) and PowerShell for path detection.
- Scripts are **self-deleting** after execution to reduce clutter.
- just run `doskey /macros` to see any custom commands that may have been missed

---

## Author

Glitch872





## Legacy / Old Versions

The repository also contains an `old` folder, which holds much older versions of the terminal scripts.  

- Folder: `old/`
- Example files:
  - `Setup-old.bat`
  - `Update-old.bat`
- Notes:
  - These scripts create a folder named `Art Project` instead of `Custom CMD Terminal`.
  - They rely on outdated or dead URLs.
  - Functionality is limited and may be buggy.
  - Only kept for historical/reference purposes; **not recommended for use**.

> ⚠️ If you are installing or running the terminal, use the latest scripts (`install.bat`, `update.bat`, `min.bat`) from the main repository. Do **not** use files in `old/`.

