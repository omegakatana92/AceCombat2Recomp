# Ace Combat 2 - Recomp

> **Work in Progress:** This recompilation project is currently under development. Features, compatibility, performance, and functionality may change as development continues.

A modern fan-made recompilation project for **Ace Combat 2**, originally released for the **Sony PlayStation**.

## Built With PSXRecomp

This project is built using [PSXRecomp](https://github.com/mstan/psxrecomp), the PlayStation 1 static recompiler framework created by mstan. The framework is included in this project as a Git submodule.

## Disc Required

This project **does not include the original game disc image or copyrighted assets**.

To play, you must provide your **own legally obtained copy** of *Ace Combat 2*.

The original game disc image must **not** be uploaded to this repository or included with releases.

## Features

* PlayStation recompilation
* **Work in progress / actively being developed**
* Requires the user's own legally obtained game disc/image
* No copyrighted game disc files are distributed with this project
* No original game artwork, music, or other copyrighted game assets are included
* Fullscreen support
* Designed for modern systems
* Keyboard controls
* Source code intended to support community contributions
* Bug fixes and feature improvements welcome

## Controls

Controls depend on the current runtime configuration.

Keyboard and controller bindings may be configurable through the project's input configuration.

## Building From Source

This repository contains the source code, build files, game configuration, and recompilation data required to build the project.

### Requirements

* Git
* CMake
* A supported C/C++ compiler
* Required project dependencies
* Your own legally obtained copy of the game, if required by the build process

### Clone the Repository

```bash
git clone https://github.com/omegakatana92/AceCombat2Recomp.git
cd AceCombat2Recomp
```

### Configure the Build

```bash
cmake -S . -B build
```

### Build

```bash
cmake --build build --config Release
```

The resulting executable will be placed in the project's build output directory.

**The original game disc image is not included in this repository.**

Because this project is currently under development, the build may not yet be fully functional or complete.

## Contributing

Contributions and improvements are welcome!

Developers can **fork this repository**, make changes, test their work, and submit a **Pull Request**.

Possible contributions include:

* Bug fixes
* Performance improvements
* Controller improvements
* Fullscreen improvements
* Linux compatibility
* Steam Deck compatibility
* Build-system improvements
* Accessibility improvements
* Documentation improvements
* Configuration options
* Additional platform support

Please do not submit copyrighted game disc images, game assets, music, artwork, or other proprietary game material.

## Copyright

**Ace Combat 2**, its characters, aircraft, names, artwork, music, trademarks, and other intellectual property remain the property of their respective copyright and trademark holders.

This is an independent fan-made recompilation project.

No original game disc images or copyrighted game assets are distributed with this project.

**All rights to the original game and its associated intellectual property remain with their respective owners.**

## Fullscreen

Fullscreen support is available through the runtime configuration.

## Launcher

A lightweight Windows GUI launcher is provided in the `launcher/` folder.

The launcher:

* Locates the recompiled executable automatically (it lives next to `launcher/launcher/..`).
* Asks you to pick your legally obtained game disc CUE.
* Lets you choose between the bundled **OpenBIOS** (default) and a **Custom BIOS** of your own.
* Passes `--disc "<path>"` to the recompiled executable, plus `--bios "<path>"` only when Custom BIOS is selected (the runtime's actual supported mechanism).
* Persists the last selected CUE, BIOS mode, and Custom BIOS path in `%APPDATA%\AceCombat2Recomp\launcher-config.json` so the next launch pre-fills them.
* Validates the CUE and (for Custom BIOS) the BIOS file exist before launching.
* Invokes the existing `Ace_Combat_2_Recompiled.exe` with the runtime flags it actually supports.
* No external dependencies — uses Windows PowerShell 5.1 (built into Windows) and System.Windows.Forms.
* No copyrighted game disc image or retail PlayStation BIOS is bundled or copied.

To use:

1. Open the `launcher/` folder.
2. Double-click `AceCombat2Launcher.bat` (or run `powershell -ExecutionPolicy Bypass -File .\launcher\AceCombat2Launcher.ps1`).
3. Pick your **BIOS** source:
   * **OpenBIOS (Included)** — uses the bundled `bios\openbios.bin` shipped with the release. No BIOS download is required.
   * **Custom BIOS** — click **Browse...** and select your own legally obtained PS1 BIOS file (e.g. `SCPH1001.BIN`). Retail BIOS files are not included or distributed.
4. Click **Browse...** in the Disc CUE section and select your legally obtained `Ace Combat 2 (USA).cue` disc image.
5. Click **Launch Game**.

OpenBIOS will boot, the game will detect the disc, and gameplay will start. Press **Alt+Enter** in-game to toggle fullscreen.

## Disclaimer

This project is currently a **work in progress** and is not considered a finished or fully playable release.

This project does not distribute the original game disc image or copyrighted game assets.

Users must provide their own legally obtained copy of the game.

This project is an independent fan-made recompilation and is **not affiliated with or endorsed by Namco or other rights holders associated with the original game.**
