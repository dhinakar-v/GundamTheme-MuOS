# MustardOS (muOS) — Complete Theme Creation Documentation

> Source: [muos.dev/themes](https://muos.dev/themes) and all sub-pages  
> License: [CC Attribution-Noncommercial 4.0 International](https://creativecommons.org/licenses/by-nc/4.0/deed.en)

---

## Table of Contents

1. [Overview](#overview)
2. [Theme Folder Structure](#theme-folder-structure)
   - [Full Directory Tree](#full-directory-tree)
   - [Folder Descriptions](#folder-descriptions)
   - [Multi-Resolution Support](#multi-resolution-support)
   - [Glyphs](#theme-folder-structure-glyphs)
   - [Program Names Reference](#program-names)
   - [Sound Files](#sound-files---navigation)
3. [Image Assistance](#image-assistance)
   - [Image Formats](#image-format)
   - [Menu Graphic Design](#menu-graphic-design)
4. [Custom Fonts](#custom-fonts)
   - [Converting Fonts](#converting-fonts-into-a-binary-file)
   - [Using the Script](#using-the-script)
   - [Supported Character Ranges](#supported-character-ranges)
   - [Installing Custom Fonts](#install-custom-fonts)
5. [Scheme Files](#scheme-files)
   - [Introduction](#scheme-file-introduction)
   - [Scheme File Hierarchy](#scheme-file-hierarchy)
   - [Section: background](#section-background)
   - [Section: font](#section-font)
   - [Section: status](#section-status)
   - [Section: battery](#section-battery)
   - [Section: network](#section-network)
   - [Section: bluetooth](#section-bluetooth)
   - [Section: date](#section-date)
   - [Section: footer](#section-footer)
   - [Section: header](#section-header)
   - [Section: help](#section-help)
   - [Section: navigation](#section-navigation)
   - [Section: grid](#section-grid)
   - [Section: list](#section-list)
   - [Section: image_list](#section-image_list)
   - [Section: charging](#section-charging)
   - [Section: keyboard](#section-keyboard)
   - [Section: notification](#section-notification)
   - [Section: bar](#section-bar)
   - [Section: roll](#section-roll)
   - [Section: counter](#section-counter)
   - [Section: meta](#section-meta)
   - [Section: terminal](#section-terminal)
   - [Section: verbose](#section-verbose)
   - [Section: misc](#section-misc)
6. [Theme Alternatives](#theme-alternatives)
   - [Introduction](#theme-alternatives-introduction)
   - [Alternative Scheme .ini Files](#alternative-scheme-ini-files)
   - [RGB Support](#rgb)
   - [active.txt](#active-text)
   - [Alternative Scheme .muxalt](#alternative-scheme-muxalt)
7. [Theme Assets (Grid Images)](#theme-assets-grid-images)
   - [Introduction](#asset-file-introduction)
   - [Asset File Structure](#asset-file-structure-for-grid-images)
   - [Displaying Grid Images](#displaying-grid-images)
   - [Zipping Your Assets](#zipping-your-assets)
8. [Finishing Your Theme](#finishing-your-theme)
   - [Creating a Preview Image](#creating-a-preview-image)
   - [Zipping Your Theme](#zipping-your-theme)

---

## Overview

On MustardOS, you can fully customise the look of your menus on your device using **Themes**. You can create your own themes from scratch or install community-made ones.

- All community themes are available at [theme.muos.dev](https://theme.muos.dev/). Download a `.muxthm` file and place it on your device at `MUOS/theme`.
- Additional themes can be found on the [MustardOS Forum](https://community.muos.dev/).

> Some themes have matching folder artwork for Explore Content, installed separately. Check the theme's release page on the forum to see if these are available.

---

## Theme Folder Structure

### Full Directory Tree

```
.
├── active.txt
├── assets.muxzip
├── credits.txt
├── alternate
│   └── {alternate 1}.ini
│   └── {alternate 1}.muxzip
│   └── {alternate 2}.ini
│   └── {alternate 2}.muxzip
│   ├── rgb
│   │   ├── {alternate 1}
│   │   │   └── rgbconf.sh
│   │   ├── {alternate 2}
│   │   │   └── rgbconf.sh
├── font
│   └── default.bin
│   ├── header
│   │   └── default.bin
│   ├── footer
│   │   └── default.bin
│   ├── panel
│   │   └── default.bin
├── glyph
│   ├── muxlaunch
│   │   ├── explore.png
│   │   ├── favourite.png
│   │   ├── history.png
│   │   ├── apps.png
│   │   ├── info.png
│   │   ├── config.png
│   │   ├── reboot.png
│   │   └── shutdown.png
├── scheme
│   └── global.ini
├── 640x480
│   ├── font
│   │   └── default.bin
│   ├── glyph
│   │   └── muxlaunch
│   │       ├── explore.png
│   │       ├── favourite.png
│   │       ├── history.png
│   │       ├── apps.png
│   │       ├── info.png
│   │       ├── config.png
│   │       ├── reboot.png
│   │       └── shutdown.png
│   ├── image
│   │   ├── bootlogo.bmp
│   │   ├── overlay.png
│   │   ├── static
│   │   │   ├── muxlaunch
│   │   │   │   ├── explore.png
│   │   │   │   ├── favourite.png
│   │   │   │   ├── history.png
│   │   │   │   ├── apps.png
│   │   │   │   ├── info.png
│   │   │   │   ├── config.png
│   │   │   │   ├── reboot.png
│   │   │   │   └── shutdown.png
│   │   │   └── muxinfo.png
│   │   └── wall
│   │       ├── default.png
│   │       ├── muxtester.png
│   │       └── muxcharge.png
│   ├── scheme
│   │   ├── default.ini
│   │   └── muxtester.ini
├── 720x480
├── 720x576
├── 720x720
├── 1280x720
└── sound
```

### Folder Descriptions

| Folder | Description |
|---|---|
| `font/` | Custom fonts compiled into `.bin` format. Fonts in `panel/` override list item font. Fonts in `header/` override the header font. Fonts in `footer/` override the footer font. |
| `glyph/` | PNG images for list item glyphs. Named according to program name conventions. |
| `image/` | All image assets for your theme. |
| `image/static/` | Images that sit on top of other elements, named after their associated program. |
| `image/wall/` | All background images. Files named `default.xxx` apply to all programs without dedicated assets. |
| `scheme/` | The "brain" of the theme. `.ini` files control how windows, text, colours, and layouts appear per program. |
| `sound/` | `.wav` files played during navigation in the muOS menus. |
| `alternate/` | Contains scheme files or `.muxalt` archives for alternative theme variants. |

### Multi-Resolution Support

Themes can support multiple device resolutions by including resolution-specific folders:

- `640x480`
- `720x480`
- `720x576`
- `720x720`
- `1280x720`

Each resolution folder can contain subfolders: `font`, `image`, `scheme`, `glyph`.

When a device resolution matches a folder, muOS uses content from that specific resolution folder.

For resources shared across all resolutions (e.g., fonts and glyphs), place them in the **root** of the theme (outside resolution subfolders).

> The default MustardOS theme (`MustardOS.muxthm`) is a good example of a basic theme.

### Theme Folder Structure Glyphs

Glyph images change as new features are added to muOS. For the full current list of supported glyphs, check the `MustardOS.muxthm` theme on your device at `/MUOS/theme`, or view the list on the [muOS GitHub](https://github.com/MustardOS/internal/tree/main/share/theme/active/glyph).

If your theme does not supply glyph images, it falls back to the default images in `MustardOS.muxthm`. To hide glyphs entirely, adjust the scheme file:

```ini
[list]
LIST_DEFAULT_GLYPH_ALPHA=0
LIST_FOCUS_GLYPH_ALPHA=0
```

### Program Names

Every muOS program/screen has an individual name, allowing per-page customisation. Files named `default.xxx` apply globally; renaming them to `mux...` applies settings only to that page. You can also set images for individual list items on the main launch page (under `./image/static/muxlaunch/`).

| Program Name | Function | List Item Names |
|---|---|---|
| muxapp | Dynamic applications page | N/A |
| muxarchive | Archive Manager page | N/A |
| muxassign | Shows when assigning a core to a folder | N/A |
| muxbackup | Device Backup | N/A |
| muxcharge | Charging Screen | N/A |
| muxcollect | Collections page | N/A |
| muxconfig | Configuration page | N/A |
| muxconnect | Connectivity | N/A |
| muxcontrol | Setting Content Control | N/A |
| muxcredits | Credits | N/A |
| muxcustom | Customisation | N/A |
| muxdownload | Core/Language Downloader | N/A |
| muxgov | Governor | N/A |
| muxhdmi | HDMI Output Settings | N/A |
| muxhistory | History page | N/A |
| muxinfo | Information page | N/A |
| muxkiosk | Kiosk Settings | N/A |
| muxlanguage | Language | N/A |
| muxlaunch | Main Menu | explore / collection / history / apps / info / config / reboot / shutdown |
| muxmessage | Messages | N/A |
| muxnetinfo | Network Details | N/A |
| muxnetprofile | Network Profiles (within Wi-Fi) | N/A |
| muxnetscan | Shows when scanning for networks | N/A |
| muxnetwork | Wi-Fi Network Page | N/A |
| muxoption | Content Option | N/A |
| muxpass | Passcode Lock Screen | N/A |
| muxpicker | Catalogue Sets / RetroArch Configurations / Theme Picker | N/A |
| muxplore | Content Explore Page | N/A |
| muxpower | Power Settings | N/A |
| muxrtc | Date and Time page | N/A |
| muxsearch | Search Content | N/A |
| muxshot | Screenshots | N/A |
| muxstorage | Storage Space / Storage Migrate/Sync | N/A |
| muxsplash | Splash screen | N/A |
| muxstart | Start screen | N/A |
| muxsysinfo | System details | N/A |
| muxtag | Tag Content | N/A |
| muxtask | Task Toolkit page | N/A |
| muxtester | Input Tester | N/A |
| muxthemedown | Theme Downloader | N/A |
| muxthemefilter | Theme Filters | N/A |
| muxtimezone | Timezone Selection | N/A |
| muxtweakadv | Advanced (within General Settings) | N/A |
| muxtweakgen | General Settings | N/A |
| muxvisual | Interface Options (within General Settings) | N/A |
| muxwarn | Reset warning page | N/A |
| muxwebserv | Web Services page | N/A |

### Sound Files - Navigation

Place `WAVE` (`.wav`) files in the `sound/` directory to add sounds to your theme.

| Sound File | Function |
|---|---|
| back.wav | Pressing the back button |
| confirm.wav | Selecting an active item |
| error.wav | Error sound |
| info_close.wav | Closing Info Window |
| info_open.wav | Opening Info Window |
| keypress.wav | On Screen Keyboard (OSK) key press |
| muos.wav | Something secret — *What could it be?* |
| navigate.wav | Pressing UDLR buttons |
| option.wav | Change Option Value |
| reboot.wav | Rebooting the device |
| shutdown.wav | Shutting down the device |
| startup.wav | Starting up the device |

---

## Image Assistance

### Image Format

There are three compatible image formats for themes, each with specific use cases:

| Format | Use Case |
|---|---|
| `.bmp` | Boot logo **only** (24-bit, True Colour bitmap) |
| `.png` | Static images (`./image/static/`), backgrounds (`./image/wall/`), and `overlay.png` |

**Always use the correct resolution for the target device.**

> If you need to convert an image to a 24-bit `.bmp`, you can use [online converters](https://online-converting.com/image/convert2bmp/).

### Menu Graphic Design

Common graphic design tools used by muOS theme creators:
- Photoshop
- [Photopea](https://www.photopea.com/) *(free, online)*
- Illustrator
- GIMP
- Procreate
- Aesprite *(pixel art)*
- Affinity

#### Advanced Navigation Layouts

With individual list item images, you can simulate complex navigation menus. Common examples for `muxlaunch`:

**Single row horizontal navigation across two pages** *(e.g., GamePal by vacarotti)*

**Multiple row horizontal navigation** *(e.g., GbOS by ciskao)*

**Vertical scrolling navigation** *(e.g., Plexus by LMarcoMiranda)*

To achieve these, follow these steps:

1. Create an image folder within `./image/wall/` named `muxlaunch`, containing files named:
   - `explore.png`, `collection.png`, `history.png`, `apps.png`, `info.png`, `config.png`, `reboot.png`, `shutdown.png`

2. Duplicate `./scheme/default.ini` and rename it to `muxlaunch.ini`. In that file:
   - Set all `[LIST]` alpha values to `0` to make list items invisible.
   - Set `[MISC] NAVIGATION_TYPE=0` (vertical) or `=1` (horizontal).

---

## Custom Fonts

### Converting Fonts into a Binary File

muOS uses fonts compiled into `.bin` format (via LVGL). You can convert using:

- **Online tool**: [lvgl.io/tools/fontconverter](https://lvgl.io/tools/fontconverter)
- **Offline via terminal**: using `lv_font_conv`

#### Setup (offline method)

1. Install [Node.js](https://nodejs.org/en/download/prebuilt-installer)
2. Install the converter globally:

```bash
npm i lv_font_conv -g
```

> **macOS note:** You may need to prefix with `sudo`:
> ```bash
> sudo npm i lv_font_conv -g
> ```

### Using the Script

```bash
lv_font_conv --bpp 4 --size 20 --font "username/folder/example.ttf" -r 0x00-0xFF --format bin --no-compress --no-prefilter -o "./Downloads/default.bin"
```

Replace `username/folder/example.ttf` with the path to your font file (tip: drag and drop into terminal).

The output is placed in your Downloads folder. Adjust the `-o` path to change this.

**Parameters:**

| Parameter | Description |
|---|---|
| `--size` | Font size in pixels. `20` is a good default for most UI elements. |
| `-r` (range) | Unicode character range(s) to include. |
| `--bpp` | Bits per pixel for smoothness. Valid values: `1`, `2`, `4`, `8`. `4` is recommended. |
| `--format bin` | Output format (required for muOS). |
| `--no-compress` | Required flag. |
| `--no-prefilter` | Required flag. |

### Supported Character Ranges

To support the most languages while maintaining performance, include these ranges:

| Range | Description |
|---|---|
| `0x0020-0x007E` | Basic Latin |
| `0x00A1-0x00AC 0x00AE-0x00FF` | Latin-1 Supplement |
| `0x0100-0x017F` | Latin Extended-A |
| `0x0180-0x024F` | Latin Extended-B |
| `0x0400-0x04FF` | Cyrillic |
| `0x0900-0x097F` | Devanagari |
| `0x1E00-0x1EFF` | Latin Extended Additional |
| `0x2010-0x2027 0x2030-0x205E` | General Punctuation |

Full recommended command with all ranges:

```bash
lv_font_conv --bpp 4 --size 20 --font "username/folder/example.ttf" \
  -r 0x0020-0x007E,0x00A1-0x00AC,0x00AE-0x00FF,0x0100-0x017F,0x0180-0x024F,\
0x0400-0x04FF,0x0900-0x097F,0x1E00-0x1EFF,0x2010-0x2027,0x2030-0x205E \
  --format bin --no-compress --no-prefilter -o "./Downloads/default.bin"
```

> **Note:** Not all fonts support all ranges. If you get a message like `Font doesn't have any characters in range 0x900-0x97f`, either use a different font or remove that range from the command.

> **macOS / path with spaces:** Rename files and folders to remove spaces before converting — spaces in paths can cause issues.

See the [lv_font_conv GitHub repo](https://github.com/lvgl/lv_font_conv) for more details.

### Install Custom Fonts

Place your compiled `.bin` fonts in `./font/`:

- `default.bin` — applies to all programs
- `mux_example.bin` — applies only to a specific program (replace `mux_example` with the program name)

Sub-folders override specific UI zones:

| Folder | Zone Affected |
|---|---|
| `./font/` (root) | General / fallback |
| `./font/header/` | Header bar text |
| `./font/footer/` | Footer bar text |
| `./font/panel/` | List item text |

---

## Scheme Files

### Scheme File Introduction

Scheme files (`.ini`) control how your theme looks and behaves. They define:

- Navigation button alignment in the footer
- Colours and transparency of all text and backgrounds
- Text positioning
- Image usage from `./image/`

**Hex Codes** — 6-digit sequences determining element colours (e.g., `FF0000` for red).

**Alpha** — Transparency range from `0` (invisible) to `255` (fully opaque).

> **Tip:** Each individual page can have unique properties. Create a `.ini` file in `./scheme/` named after the program (e.g., `muxlaunch.ini`).

### Scheme File Hierarchy

Multiple scheme files are loaded additively per screen. Later files override earlier settings:

| Scheme Path | Description |
|---|---|
| `/scheme/global.ini` | Main scheme for the entire theme regardless of resolution or screen. |
| `/{Resolution}/scheme/default.ini` | Default settings for all screens at a specific resolution. |
| `/{Resolution}/scheme/{module}.ini` | Settings that apply only to a specific screen at a specific resolution. |

---

### Section: [background]

| Setting | Description |
|---|---|
| `BACKGROUND=000000` | Background colour. Most used in list gradients. |
| `BACKGROUND_ALPHA=0` | Background colour transparency. |
| `BACKGROUND_GRADIENT_COLOR=000000` | 2nd colour in gradient. |
| `BACKGROUND_GRADIENT_START=0` | Start point of gradient change. |
| `BACKGROUND_GRADIENT_STOP=255` | End point of gradient change. |
| `BACKGROUND_GRADIENT_DIRECTION=0` | `0`=None, `1`=Vertical, `2`=Horizontal |
| `BACKGROUND_GRADIENT_DITHER=0` | `0`=Disabled, `1`=Enabled. Applies dithering to smooth banding. |
| `BACKGROUND_GRADIENT_BLUR=0` | `0`=Disabled, `1+`=Level of blur applied to gradient. |

---

### Section: [font]

| Setting | Description |
|---|---|
| `FONT_HEADER_PAD_TOP=0` | Pixels from top of header area to header text. |
| `FONT_HEADER_PAD_BOTTOM=0` | Pixels from bottom of header area to header text. |
| `FONT_HEADER_ICON_PAD_TOP=0` | Pixels from top of header area to header icons. |
| `FONT_HEADER_ICON_PAD_BOTTOM=0` | Pixels from bottom of header area to header icons. |
| `FONT_FOOTER_PAD_TOP=0` | Pixels from top of footer area to footer text. |
| `FONT_FOOTER_PAD_BOTTOM=0` | Pixels from bottom of footer area to footer text. |
| `FONT_FOOTER_ICON_PAD_TOP=0` | Pixels from top of footer area to footer icons. |
| `FONT_FOOTER_ICON_PAD_BOTTOM=0` | Pixels from bottom of footer area to footer icons. |
| `FONT_MESSAGE_PAD_TOP=0` | Pixels from top of message area to message text. |
| `FONT_MESSAGE_PAD_BOTTOM=0` | Pixels from bottom of message area to message text. |
| `FONT_MESSAGE_ICON_PAD_TOP=0` | Pixels from top of message area to message icons. |
| `FONT_MESSAGE_ICON_PAD_BOTTOM=0` | Pixels from bottom of message area to message icons. |
| `FONT_LIST_PAD_TOP=0` | Pixels from top of a list item area to list item text. |
| `FONT_LIST_PAD_BOTTOM=0` | Pixels from bottom of a list item area to list item text. |
| `FONT_LIST_PAD_LEFT=0` | Pixels from left of a list item area to list item text. |
| `FONT_LIST_PAD_RIGHT=0` | Pixels from right of a list item area to list item text. |
| `FONT_LIST_ICON_PAD_TOP=0` | Pixels from top of a list item area to list item glyph. |
| `FONT_LIST_ICON_PAD_BOTTOM=0` | Pixels from bottom of a list item area to list item glyph. |

> **Note:** Text and glyphs in header, footer, and list items are vertically centered by default. Start with `0` and use `FONT_LIST_PAD_TOP` to move text down, `FONT_LIST_PAD_BOTTOM` to move text up. Do not use both simultaneously.

---

### Section: [status]

| Setting | Description |
|---|---|
| `ALIGN=1` | Header icon alignment. `0`=Left, `1`=Right, `2`=Center, `3`=Evenly spaced, `4`=Equal space around, `5`=First left/last right/rest distributed |
| `PADDING_LEFT=0` | Pixels of space on left side of header icons. |
| `PADDING_RIGHT=0` | Pixels of space on right side of header icons. |

---

### Section: [battery]

| Setting | Description |
|---|---|
| `BATTERY_NORMAL=000000` | Battery icon standard colour. |
| `BATTERY_ACTIVE=207d0e` | On-charge battery icon colour. |
| `BATTERY_LOW=7d0e0e` | Low battery icon colour. |
| `BATTERY_NORMAL_ALPHA=255` | Battery icon standard transparency. |
| `BATTERY_ACTIVE_ALPHA=255` | On-charge battery icon transparency. |
| `BATTERY_LOW_ALPHA=255` | Low battery icon transparency. |

---

### Section: [network]

| Setting | Description |
|---|---|
| `NETWORK_NORMAL=53422e` | Disconnected network icon colour. |
| `NETWORK_ACTIVE=000000` | Connected network icon colour. |
| `NETWORK_NORMAL_ALPHA=255` | Disconnected network icon transparency. |
| `NETWORK_ACTIVE_ALPHA=255` | Connected network icon transparency. |

---

### Section: [bluetooth]

| Setting | Description |
|---|---|
| `BLUETOOTH_NORMAL=53422e` | Disconnected bluetooth icon colour. *(Not yet implemented)* |
| `BLUETOOTH_ACTIVE=000000` | Connected bluetooth icon colour. *(Not yet implemented)* |
| `BLUETOOTH_NORMAL_ALPHA=255` | Disconnected bluetooth icon transparency. *(Not yet implemented)* |
| `BLUETOOTH_ACTIVE_ALPHA=255` | Connected bluetooth icon transparency. *(Not yet implemented)* |

---

### Section: [date]

| Setting | Description |
|---|---|
| `DATETIME_TEXT=000000` | Time text colour. |
| `DATETIME_ALPHA=255` | Time text transparency. |
| `DATETIME_ALIGN=1` | `0`=Auto, `1`=Left, `2`=Center, `3`=Right |
| `PADDING_LEFT=0` | Pixels of space on left side of time text. |
| `PADDING_RIGHT=0` | Pixels of space on right side of time text. |

---

### Section: [footer]

| Setting | Description |
|---|---|
| `FOOTER_HEIGHT=42` | Footer height in pixels. |
| `FOOTER_BACKGROUND=000000` | Footer background colour. |
| `FOOTER_BACKGROUND_ALPHA=0` | Footer background transparency. |
| `FOOTER_TEXT=000000` | Footer text colour (excluding nav buttons). |
| `FOOTER_TEXT_ALPHA=255` | Footer text transparency (excluding nav buttons). |

---

### Section: [header]

| Setting | Description |
|---|---|
| `HEADER_HEIGHT=42` | Header height in pixels. |
| `HEADER_BACKGROUND=000000` | Header background colour. |
| `HEADER_BACKGROUND_ALPHA=0` | Header background transparency. |
| `HEADER_TEXT=000000` | Header text colour (excluding time text). |
| `HEADER_TEXT_ALPHA=255` | Header text transparency (excluding time text). |
| `HEADER_TEXT_ALIGN=2` | `0`=Auto, `1`=Left, `2`=Center, `3`=Right |
| `PADDING_LEFT=0` | Pixels of space on left side of title text. |
| `PADDING_RIGHT=0` | Pixels of space on right side of title text. |

---

### Section: [help]

| Setting | Description |
|---|---|
| `HELP_BACKGROUND=5d0014` | Help/info window background colour. |
| `HELP_BACKGROUND_ALPHA=255` | Help/info window background transparency. |
| `HELP_BORDER=ffe5b9` | Help/info window border colour. |
| `HELP_BORDER_ALPHA=255` | Help/info window border transparency. |
| `HELP_CONTENT=ffe5b9` | Help/info window standard text colour. |
| `HELP_TITLE=ffe5b9` | Help/info window title text colour. |
| `HELP_RADIUS=10` | Border roundness. `0`=right angle, `10+`=very round. |

---

### Section: [navigation]

| Setting | Description |
|---|---|
| `ALIGNMENT=1` | Footer nav button alignment. `0`=Left, `1`=Center, `2`=Right. |
| `NAV_A_GLYPH=000000` | "A" button icon colour. |
| `NAV_A_GLYPH_ALPHA=255` | "A" button icon transparency. |
| `NAV_A_GLYPH_RECOLOUR_ALPHA=255` | "A" button icon recolour transparency. |
| `NAV_A_TEXT=000000` | "A" button label text colour. |
| `NAV_A_TEXT_ALPHA=255` | "A" button label text transparency. |
| `NAV_B_GLYPH=000000` | "B" button icon colour. |
| `NAV_B_GLYPH_ALPHA=255` | "B" button icon transparency. |
| `NAV_B_GLYPH_RECOLOUR_ALPHA=255` | "B" button icon recolour transparency. |
| `NAV_B_TEXT=000000` | "B" button label text colour. |
| `NAV_B_TEXT_ALPHA=255` | "B" button label text transparency. |
| `NAV_C_GLYPH=000000` | "C" button icon colour. |
| `NAV_C_GLYPH_ALPHA=255` | "C" button icon transparency. |
| `NAV_C_GLYPH_RECOLOUR_ALPHA=255` | "C" button icon recolour transparency. |
| `NAV_C_TEXT=000000` | "C" button label text colour. |
| `NAV_C_TEXT_ALPHA=255` | "C" button label text transparency. |
| `NAV_X_GLYPH=000000` | "X" button icon colour. |
| `NAV_X_GLYPH_ALPHA=255` | "X" button icon transparency. |
| `NAV_X_GLYPH_RECOLOUR_ALPHA=255` | "X" button icon recolour transparency. |
| `NAV_X_TEXT=000000` | "X" button label text colour. |
| `NAV_X_TEXT_ALPHA=255` | "X" button label text transparency. |
| `NAV_Y_GLYPH=000000` | "Y" button icon colour. |
| `NAV_Y_GLYPH_ALPHA=255` | "Y" button icon transparency. |
| `NAV_Y_GLYPH_RECOLOUR_ALPHA=255` | "Y" button icon recolour transparency. |
| `NAV_Y_TEXT=000000` | "Y" button label text colour. |
| `NAV_Y_TEXT_ALPHA=255` | "Y" button label text transparency. |
| `NAV_Z_GLYPH=000000` | "Z" button icon colour. |
| `NAV_Z_GLYPH_ALPHA=255` | "Z" button icon transparency. |
| `NAV_Z_GLYPH_RECOLOUR_ALPHA=255` | "Z" button icon recolour transparency. |
| `NAV_Z_TEXT=000000` | "Z" button label text colour. |
| `NAV_Z_TEXT_ALPHA=255` | "Z" button label text transparency. |
| `NAV_MENU_GLYPH=000000` | "M/MENU" button icon colour. |
| `NAV_MENU_GLYPH_ALPHA=255` | "M/MENU" button icon transparency. |
| `NAV_MENU_GLYPH_RECOLOUR_ALPHA=255` | "M/MENU" button icon recolour transparency. |
| `NAV_MENU_TEXT=000000` | "M" button label text colour. |
| `NAV_MENU_TEXT_ALPHA=255` | "M" button label text transparency. |

---

### Section: [grid]

Enables grid display for the main menu or content explorer. Content Explorer grid only shows for directories containing only folders. You can disable grid view for a specific folder by adding an empty `.nogrid` file to the root of that directory.

| Setting | Description |
|---|---|
| `CURRENT_ITEM_LABEL_ALIGNMENT=9` | Label alignment. `1`=Top Left, `2`=Top Middle, `3`=Top Right, `4`=Bottom Left, `5`=Bottom Middle, `6`=Bottom Right, `7`=Left Middle, `8`=Right Middle, `9`=Center |
| `CURRENT_ITEM_LABEL_WIDTH=600` | Width of label. `0` = size to content. |
| `CURRENT_ITEM_LABEL_HEIGHT=0` | Height of label. `0` = size to content. |
| `CURRENT_ITEM_LABEL_OFFSET_X=0` | Horizontal offset based on alignment. |
| `CURRENT_ITEM_LABEL_OFFSET_Y=260` | Vertical offset based on alignment. |
| `CURRENT_ITEM_LABEL_RADIUS=10` | Label corner radius. `0`=square, `10+`=round. |
| `CURRENT_ITEM_LABEL_BORDER_WIDTH=5` | Label border width in pixels. |
| `CURRENT_ITEM_LABEL_BORDER=FFFFFF` | Label border colour. |
| `CURRENT_ITEM_LABEL_BORDER_ALPHA=255` | Label border transparency. |
| `CURRENT_ITEM_LABEL_BACKGROUND=000000` | Label background colour. |
| `CURRENT_ITEM_LABEL_BACKGROUND_ALPHA=255` | Label background transparency. |
| `CURRENT_ITEM_LABEL_TEXT=FFFFFF` | Label text colour. |
| `CURRENT_ITEM_LABEL_TEXT_ALPHA=255` | Label text transparency. |
| `CURRENT_ITEM_LABEL_TEXT_ALIGNMENT=2` | Text horizontal alignment: `1`=Left, `2`=Center, `3`=Right |
| `CURRENT_ITEM_LABEL_TEXT_LINE_SPACING=0` | Spacing between lines. Negative values allowed. |
| `CURRENT_ITEM_LABEL_TEXT_PADDING_BOTTOM=10` | Padding between label bottom edge and text. |
| `CURRENT_ITEM_LABEL_TEXT_PADDING_LEFT=10` | Padding between label left edge and text. |
| `CURRENT_ITEM_LABEL_TEXT_PADDING_RIGHT=10` | Padding between label right edge and text. |
| `CURRENT_ITEM_LABEL_TEXT_PADDING_TOP=10` | Padding between label top edge and text. |
| `NAVIGATION_TYPE=2` | `2`=Up/down/left/right; moving past row end goes to next row. `4`=Same but left/right wraps on active row. |
| `BACKGROUND=000000` | Grid background colour. |
| `BACKGROUND_ALPHA=0` | Grid background transparency. |
| `LOCATION_X=0` | Horizontal position of grid in pixels. |
| `LOCATION_Y=0` | Vertical position of grid in pixels. |
| `COLUMN_COUNT=0` | Number of columns. |
| `ROW_COUNT=0` | Number of rows displayed on screen at one time. |
| `ROW_HEIGHT=0` | Height in pixels of each row. |
| `COLUMN_WIDTH=0` | Width in pixels of each column. |
| `CELL_COLUMN_ALIGN=1` | `0`=Left, `1`=Center, `2`=Right |
| `CELL_ROW_ALIGN=1` | `0`=Top, `1`=Center, `2`=Bottom |
| `CELL_WIDTH=200` | Cell width in pixels. |
| `CELL_HEIGHT=200` | Cell height in pixels. |
| `CELL_RADIUS=10` | Cell corner radius. `0`=square. |
| `CELL_BORDER_WIDTH=5` | Cell border width in pixels. |
| `CELL_IMAGE_PADDING_TOP=5` | Padding from top of cell to cell image. (If text alpha=0, image is centered by default.) |
| `CELL_TEXT_PADDING_BOTTOM=5` | Padding from bottom of cell to text label. |
| `CELL_TEXT_PADDING_SIDE=5` | Padding from cell edge to text label. |
| `CELL_TEXT_LINE_SPACING=0` | Spacing between wrapped lines. Negative values allowed. |
| `CELL_SHADOW=000000` | Cell shadow colour. |
| `CELL_SHADOW_WIDTH=0` | Shadow width in pixels. |
| `CELL_SHADOW_X_OFFSET=10` | Horizontal shadow offset in pixels. |
| `CELL_SHADOW_Y_OFFSET=10` | Vertical shadow offset in pixels. |
| `CELL_DEFAULT_BACKGROUND=000000` | Unselected cell background colour. |
| `CELL_DEFAULT_BACKGROUND_ALPHA=255` | Unselected cell background transparency. |
| `CELL_DEFAULT_BACKGROUND_GRADIENT_COLOR=000000` | 2nd gradient colour (unselected). |
| `CELL_DEFAULT_BACKGROUND_GRADIENT_START=0` | Gradient start point (unselected). |
| `CELL_DEFAULT_BACKGROUND_GRADIENT_STOP=255` | Gradient end point (unselected). |
| `CELL_DEFAULT_BACKGROUND_GRADIENT_DIRECTION=0` | `0`=None, `1`=Vertical, `2`=Horizontal |
| `CELL_DEFAULT_BORDER=000000` | Unselected cell border colour. |
| `CELL_DEFAULT_BORDER_ALPHA=255` | Unselected cell border transparency. |
| `CELL_DEFAULT_IMAGE_ALPHA=255` | Unselected cell image transparency. |
| `CELL_DEFAULT_IMAGE_RECOLOUR=000000` | Unselected cell image recolour. |
| `CELL_DEFAULT_IMAGE_RECOLOUR_ALPHA=0` | Unselected cell image recolour transparency. |
| `CELL_DEFAULT_TEXT=000000` | Unselected cell text colour. |
| `CELL_DEFAULT_TEXT_ALPHA=255` | Unselected cell text transparency. |
| `CELL_FOCUS_BACKGROUND=000000` | Selected cell background colour. |
| `CELL_FOCUS_BACKGROUND_ALPHA=255` | Selected cell background transparency. |
| `CELL_FOCUS_BACKGROUND_GRADIENT_COLOR=000000` | 2nd gradient colour (selected). |
| `CELL_FOCUS_BACKGROUND_GRADIENT_START=0` | Gradient start point (selected). |
| `CELL_FOCUS_BACKGROUND_GRADIENT_STOP=255` | Gradient end point (selected). |
| `CELL_FOCUS_BACKGROUND_GRADIENT_DIRECTION=0` | `0`=None, `1`=Vertical, `2`=Horizontal |
| `CELL_FOCUS_BORDER=000000` | Selected cell border colour. |
| `CELL_FOCUS_BORDER_ALPHA=255` | Selected cell border transparency. |
| `CELL_FOCUS_IMAGE_ALPHA=255` | Selected cell image transparency. |
| `CELL_FOCUS_IMAGE_RECOLOUR=000000` | Selected cell image recolour. |
| `CELL_FOCUS_IMAGE_RECOLOUR_ALPHA=0` | Selected cell image recolour transparency. |
| `CELL_FOCUS_TEXT=000000` | Selected cell text colour. |
| `CELL_FOCUS_TEXT_ALPHA=255` | Selected cell text transparency. |

---

### Section: [list]

Gradients can be applied to all list item backgrounds (L-R = 0–255).

| Setting | Description |
|---|---|
| `LIST_DEFAULT_RADIUS=0` | Background border radius. `0`=square, `5+`=round. Applies to both default and focus backgrounds. |
| `LIST_DEFAULT_BACKGROUND=ececec` | Unselected list item background colour. |
| `LIST_DEFAULT_BACKGROUND_ALPHA=0` | Unselected list item background transparency. |
| `LIST_DEFAULT_GRADIENT_START=0` | Gradient start point (unselected). |
| `LIST_DEFAULT_GRADIENT_STOP=0` | Gradient end point (unselected). |
| `LIST_DEFAULT_GRADIENT_DIRECTION=0` | `0`=None, `1`=Vertical, `2`=Horizontal |
| `LIST_DEFAULT_BORDER_WIDTH=5` | Unselected list item border width in pixels. |
| `LIST_DEFAULT_BORDER_SIDE=4` | Border sides. `0`=None, `1`=Bottom, `2`=Top, `4`=Left, `8`=Right. Add values for multiple sides (e.g., all sides = `15`). |
| `LIST_DEFAULT_INDICATOR=ececec` | Unselected list item indicator/border colour. |
| `LIST_DEFAULT_INDICATOR_ALPHA=0` | Unselected list item indicator transparency. |
| `LIST_DEFAULT_TEXT=53422e` | Unselected list item text colour. |
| `LIST_DEFAULT_TEXT_ALPHA=255` | Unselected list item text transparency. |
| `LIST_DEFAULT_GLYPH_PAD_LEFT=19` | Pixels from left of list item to center of glyph. |
| `LIST_DEFAULT_GLYPH_ALPHA=255` | List item glyph transparency. |
| `LIST_DEFAULT_GLYPH_RECOLOUR=53422e` | Unselected list item glyph recolour. |
| `LIST_DEFAULT_GLYPH_RECOLOUR_ALPHA=255` | Transparency of glyph recolour. |
| `LIST_DEFAULT_LABEL_LONG_MODE=1` | `0`=Wrap long lines, `1`=Show ellipsis when unselected, scroll when selected. |
| `LIST_DISABLED_TEXT=a78b65` | Unavailable list item text colour. |
| `LIST_DISABLED_TEXT_ALPHA=255` | Unavailable list item text transparency. |
| `LIST_FOCUS_BACKGROUND=000000` | Selected list item background colour. |
| `LIST_FOCUS_BACKGROUND_ALPHA=0` | Selected list item background transparency. |
| `LIST_FOCUS_GRADIENT_START=0` | Gradient start point (selected). |
| `LIST_FOCUS_GRADIENT_STOP=0` | Gradient end point (selected). |
| `LIST_FOCUS_GRADIENT_DIRECTION=0` | `0`=None, `1`=Vertical, `2`=Horizontal |
| `LIST_FOCUS_BORDER_WIDTH=5` | Selected list item border width in pixels. |
| `LIST_FOCUS_BORDER_SIDE=4` | Selected border sides. (Same values as `LIST_DEFAULT_BORDER_SIDE`.) |
| `LIST_FOCUS_INDICATOR=5d0014` | Selected list item indicator/border colour. |
| `LIST_FOCUS_INDICATOR_ALPHA=255` | Selected list item indicator transparency. |
| `LIST_FOCUS_TEXT=5d0014` | Selected list item text colour. |
| `LIST_FOCUS_TEXT_ALPHA=255` | Selected list item text transparency. |
| `LIST_FOCUS_GLYPH_ALPHA=255` | Selected list item glyph transparency. |
| `LIST_FOCUS_GLYPH_RECOLOUR=5d0014` | Selected list item glyph recolour. |
| `LIST_FOCUS_GLYPH_RECOLOUR_ALPHA=255` | Transparency of selected glyph recolour. |

---

### Section: [image_list]

| Setting | Description |
|---|---|
| `IMAGE_LIST_ALPHA=255` | Image transparency. |
| `IMAGE_LIST_RADIUS=3` | Image window radius. `0`=no change, `10+`=heavily rounded. |
| `IMAGE_LIST_RECOLOUR=ad0000` | Image recolour. |
| `IMAGE_LIST_RECOLOUR_ALPHA=0` | Transparency of image recolour. |
| `IMAGE_LIST_PAD_TOP=0` | Pixels of padding above the image. |
| `IMAGE_LIST_PAD_BOTTOM=0` | Pixels of padding below the image. |
| `IMAGE_LIST_PAD_LEFT=0` | Pixels of padding to left of image. |
| `IMAGE_LIST_PAD_RIGHT=0` | Pixels of padding to right of image. |
| `IMAGE_PREVIEW_ALPHA=255` | Preview image transparency. |
| `IMAGE_PREVIEW_RADIUS=3` | Preview image window radius. |
| `IMAGE_PREVIEW_RECOLOUR=ad0000` | Preview image recolour. |
| `IMAGE_PREVIEW_RECOLOUR_ALPHA=0` | Preview image recolour transparency. |

---

### Section: [charging]

Displayed when the device is placed on charge without booting.

| Setting | Description |
|---|---|
| `CHARGER_BACKGROUND=100808` | Charging banner background colour. |
| `CHARGER_BACKGROUND_ALPHA=0` | Charging banner background transparency. |
| `CHARGER_TEXT=000000` | Charging banner text colour. |
| `CHARGER_TEXT_ALPHA=255` | Charging banner text transparency. |
| `CHARGER_Y_POS=100` | Position of banner from center. `-100`=up, `100`=down. |

---

### Section: [keyboard]

On-screen keyboard (OSK) styling.

| Setting | Description |
|---|---|
| `OSK_BACKGROUND=5d0014` | OSK background window colour. |
| `OSK_BACKGROUND_ALPHA=255` | OSK background window transparency. |
| `OSK_BORDER=ffe5b9` | OSK border colour. |
| `OSK_BORDER_ALPHA=255` | OSK border transparency. |
| `OSK_RADIUS=10` | OSK window border radius. `0`=square, `5+`=round. |
| `OSK_TEXT=ffe5b9` | Unselected/inputted text colour. |
| `OSK_TEXT_ALPHA=255` | Unselected/inputted text transparency. |
| `OSK_TEXT_FOCUS=ffe5b9` | Selected text colour. |
| `OSK_TEXT_FOCUS_ALPHA=255` | Selected text transparency. |
| `OSK_ITEM_BACKGROUND=000000` | Unselected key background colour. |
| `OSK_ITEM_BACKGROUND_ALPHA=50` | Unselected key background transparency. |
| `OSK_ITEM_BACKGROUND_FOCUS=000000` | Selected key background colour. |
| `OSK_ITEM_BACKGROUND_FOCUS_ALPHA=150` | Selected key background transparency. |
| `OSK_ITEM_BORDER=c0c0c0` | Unselected key border colour. |
| `OSK_ITEM_BORDER_ALPHA=0` | Unselected key border transparency. |
| `OSK_ITEM_BORDER_FOCUS=ffe5b9` | Selected key border colour. |
| `OSK_ITEM_BORDER_FOCUS_ALPHA=255` | Selected key border transparency. |
| `OSK_ITEM_RADIUS=5` | All key border radius. `0`=square, `5+`=round. |

---

### Section: [notification]

| Setting | Description |
|---|---|
| `MSG_BACKGROUND=5d0014` | Pop-up message background colour. |
| `MSG_BACKGROUND_ALPHA=255` | Pop-up message background transparency. |
| `MSG_BORDER=ffe5b9` | Pop-up message border colour. |
| `MSG_BORDER_ALPHA=255` | Pop-up message border transparency. |
| `MSG_RADIUS=10` | Pop-up message border roundness. `0`=square, `5+`=round. |
| `MSG_TEXT=ffe5b9` | Pop-up message text colour. |
| `MSG_TEXT_ALPHA=255` | Pop-up message text transparency. |

---

### Section: [bar]

The horizontal bar showing volume/brightness adjustment.

| Setting | Description |
|---|---|
| `BAR_WIDTH=615` | Background bar window width. |
| `BAR_HEIGHT=5d0014` | Background bar window height. |
| `BAR_BACKGROUND=5d0014` | Bar background colour. |
| `BAR_BACKGROUND_ALPHA=255` | Bar background transparency. |
| `BAR_BORDER=ffe5b9` | Bar border colour. |
| `BAR_BORDER_ALPHA=255` | Bar border transparency. |
| `BAR_RADIUS=10` | Bar window border roundness. `0`=square, `5+`=round. |
| `BAR_PROGRESS_WIDTH=550` | Progress bar inactive section width. |
| `BAR_PROGRESS_HEIGHT=16` | Progress bar inactive section height. |
| `BAR_PROGRESS_BACKGROUND=000000` | Inactive progress bar colour. |
| `BAR_PROGRESS_BACKGROUND_ALPHA=255` | Inactive progress bar transparency. |
| `BAR_PROGRESS_ACTIVE_BACKGROUND=ffe5b9` | Active progress bar colour. |
| `BAR_PROGRESS_ACTIVE_BACKGROUND_ALPHA=255` | Active progress bar transparency. |
| `BAR_PROGRESS_RADIUS=3` | Progress bar roundness. `0`=square, `5+`=round. |
| `BAR_ICON=ffe5b9` | Volume/brightness icon colour. |
| `BAR_ICON_ALPHA=255` | Volume/brightness icon transparency. |
| `BAR_Y_POS=384` | Vertical position of the bar from the top. |

---

### Section: [roll]

The passcode/lock screen (when enabled in settings).

| Setting | Description |
|---|---|
| `ROLL_TEXT=53422e` | Unselected passcode text colour. |
| `ROLL_TEXT_ALPHA=255` | Unselected passcode text transparency. |
| `ROLL_BACKGROUND=fbfbfb` | Unselected passcode button colour. |
| `ROLL_BACKGROUND_ALPHA=255` | Unselected passcode button transparency. |
| `ROLL_RADIUS=10` | Unselected passcode button border radius. |
| `ROLL_SELECT_TEXT=000000` | Selected passcode text colour. |
| `ROLL_SELECT_TEXT_ALPHA=255` | Selected passcode text transparency. |
| `ROLL_SELECT_BACKGROUND=000000` | Selected passcode button colour. |
| `ROLL_SELECT_BACKGROUND_ALPHA=50` | Selected passcode button transparency. |
| `ROLL_SELECT_RADIUS=10` | Selected passcode button border radius. |
| `ROLL_BORDER_COLOUR=53422e` | Window border colour. |
| `ROLL_BORDER_ALPHA=255` | Window border transparency. |
| `ROLL_BORDER_RADIUS=10` | Window border roundness. `0`=square, `5+`=round. |

---

### Section: [counter]

| Setting | Description |
|---|---|
| `COUNTER_ALIGNMENT=2` | `0`=Left, `1`=Center, `2`=Right |
| `COUNTER_PADDING_AROUND=10` | Pixels around the counter text. |
| `COUNTER_PADDING_SIDE=5` | Pixels from screen side (used with left/right alignment). |
| `COUNTER_PADDING_TOP=50` | Pixels from screen top to place counter. |
| `COUNTER_BORDER_COLOUR=c69200` | Counter border colour. |
| `COUNTER_BORDER_ALPHA=255` | Counter border transparency. |
| `COUNTER_BORDER_WIDTH=2` | Counter border width in pixels. |
| `COUNTER_RADIUS=3` | Counter border roundness. `0`=square, `10+`=round. |
| `COUNTER_BACKGROUND=100808` | Counter background colour. |
| `COUNTER_BACKGROUND_ALPHA=255` | Counter background transparency. |
| `COUNTER_TEXT=ffffff` | Counter text colour. |
| `COUNTER_TEXT_ALPHA=255` | Counter text transparency. |
| `COUNTER_TEXT_FADE_TIME=50` | Fade-out delay in ms when idle. `0`=disabled. |
| `COUNTER_TEXT_SEPARATOR= of ` | Separator between current index and total (e.g., `" of "` → `"1 of 50"`). |

---

### Section: [meta]

| Setting | Description |
|---|---|
| `META_CUT=40` | Number of characters per line in help/info windows before wrapping. |

---

### Section: [terminal]

| Setting | Description |
|---|---|
| `FOREGROUND=FFFFFF` | Terminal window font colour. |
| `BACKGROUND=000000` | Terminal window background colour. |

---

### Section: [verbose]

| Setting | Description |
|---|---|
| `VERBOSE_BOOT_BACKGROUND=000000` | Verbose boot message background colour. |
| `VERBOSE_BOOT_BACKGROUND_ALPHA=255` | Verbose boot message background transparency. |
| `VERBOSE_BOOT_TEXT=FFFFFF` | Verbose boot message text colour. |
| `VERBOSE_BOOT_TEXT_ALPHA=255` | Verbose boot message text transparency. |
| `VERBOSE_BOOT_Y_POS=165` | Vertical position of verbose boot messages in pixels. |

---

### Section: [misc]

| Setting | Description |
|---|---|
| `RANDOM_BACKGROUND=0` | `1`=Randomly select background from PNG sequence. Naming convention: `{programname}.{index}.png` (e.g., `muxlaunch.0.png`, `muxlaunch.1.png`). |
| `CONTENT_SIZE_TO_CONTENT=0` | Resize list items to fit text. `CONTENT_WIDTH` used as max width if enabled. |
| `CONTENT_ALIGNMENT=0` | List item alignment. `0`=Left, `1`=Center, `2`=Right. Use `CONTENT_PADDING_LEFT` with negative/positive values to shift. |
| `CONTENT_ITEM_COUNT=13` | Number of list items displayed. Min `5`, max `13`. Combined with `CONTENT_HEIGHT` to determine item height. Also controls page-up/down behaviour. |
| `CONTENT_ITEM_HEIGHT=0` | Static height for each list item. If set, item count is calculated from `CONTENT_HEIGHT`. Use only if NOT using `CONTENT_ITEM_COUNT`. |
| `CONTENT_PADDING_LEFT=0` | Pixels from screen left to list items. |
| `CONTENT_PADDING_TOP=0` | Pixels from screen top to list items. Default positions list after header height + 2px (e.g., with 42px header, list starts at 44px). Use negative value (e.g., `-44`) to make content take full screen. |
| `CONTENT_HEIGHT=392` | Content panel height in pixels. Min `100`, max = device screen height. |
| `CONTENT_WIDTH=640` | List item content width in pixels. |
| `NAVIGATION_TYPE=0` | `0`=Vertical (up/down), `1`=Horizontal (left/right), `2`=Launch menu 2 rows of 4 icons, `3`=Launch menu top row 3 + bottom row 5, `4`=Same as `2` with left/right wrap, `5`=Same as `3` with wrap. |
| `STATIC_ALIGNMENT=0` | Controls layering and position of static images. See table below. |
| `IMAGE_OVERLAY=0` | Use overlay `.png` image? `0`=No, `1`=Yes. |
| `ANTIALIASING=1` | `0`=Disabled, `1`=Enabled. Anti-aliasing for fonts. |

**`STATIC_ALIGNMENT` Values:**

| Value | Description |
|---|---|
| `0` | Bottom Right (just above footer) |
| `1` | Middle Right |
| `2` | Top Right (just below header) |
| `3` | Fullscreen — behind header and footer |
| `4` | Fullscreen — above header and footer |

Static images are placed in `./image/static/` named similarly to wall images. `default.png` acts as a fallback. You can also use static images for individual list items and programs.

---

## Theme Alternatives

### Theme Alternatives Introduction

Theme Alternatives allows you to bundle multiple visual variants of your theme in a single `.muxthm` file. After installing, users can go to **Configuration → Customisation** and select which alternative to use. Press `A` to activate, or `B` to activate and exit.

### Alternative Scheme .ini Files

Create scheme `.ini` files in the `alternate/` folder at the root of your theme. The filename (without extension) is the name displayed in the **Alternative Theme** selector.

Example structure (`MustardOS - Pixie - Grid` theme):

```
.
├── active.txt
├── alternate
│   ├── Black.ini
│   ├── Blue.ini
│   ├── Green.ini
│   ├── muOS.ini
│   ├── Orange.ini
│   ├── Purple.ini
│   ├── Red.ini
│   └── rgb
│       ├── Black
│       │   └── rgbconf.sh
│       ├── Blue
│       │   └── rgbconf.sh
│       ├── Green
│       │   └── rgbconf.sh
│       ├── muOS
│       │   └── rgbconf.sh
│       ├── Orange
│       │   └── rgbconf.sh
│       ├── Purple
│       │   └── rgbconf.sh
│       └── Red
│           └── rgbconf.sh
```

Each `.ini` can include any setting — these apply globally across all screens and resolutions. Typically used to change colour palette values.

### RGB

To set different RGB lighting per alternative, create a `rgbconf.sh` file and place it at:

```
/alternate/rgb/{name}/rgbconf.sh
```

### Active Text

`active.txt` in the root of your theme sets the **default alternative** when the theme is first installed.

### Alternative Scheme .muxalt

A more powerful option: create `.muxalt` archive files (zip archives renamed to `.muxalt`) in the `alternate/` folder. When a user selects this alternative, the archive is extracted directly into the active theme folder.

Example structure (`Aurora` theme):

```
.
├── active.txt
└── alternate
    ├── Cloud.muxalt
    ├── Midnight.muxalt
    ├── Moon.muxalt
    ├── Retro.muxalt
    └── Twilight.muxalt
```

Each `.muxalt` must be structured so files extract to the correct theme path. Example internal structure of `Cloud.muxalt`:

```
.
└── theme
    └── active
        ├── 640x480
        │   ├── image
        │   │   ├── bootlogo.bmp
        │   │   ├── overlay.png
        │   │   ├── reboot.png
        │   │   ├── shutdown.png
        │   │   └── wall
        │   │       ├── muxlaunch
        │   │       │   ├── explore.png
        │   │       │   ├── collection.png
        │   │       │   ├── history.png
        │   │       │   ├── apps.png
        │   │       │   ├── info.png
        │   │       │   ├── config.png
        │   │       │   ├── reboot.png
        │   │       │   └── shutdown.png
        │   │       ├── default.png
        │   │       ├── muxcharge.png
        │   │       ├── muxstart.png
        │   │       └── muxsysinfo.png
        │   └── preview.png
        ├── font
        │   └── default.bin
        └── scheme
            ├── global.ini
            ├── muxlaunch.ini
            └── muxplore.ini
```

---

## Theme Assets (Grid Images)

### Asset File Introduction

Sometimes a theme requires files that aren't part of the theme itself but are needed by it — most commonly grid icon images for content explorer grid mode. Include an `assets.muxzip` file at the root of your theme. When the theme is selected via the theme picker, `assets.muxzip` is automatically extracted.

> `MustardOS - Pixie - Grid` on [theme.muos.dev](https://theme.muos.dev/) is a good reference example.

### Asset File Structure for Grid Images

```
├── catalogue
│   ├── Application
│   │   └── grid
│   │       ├── app.png
│   │       ├── archive.png
│   │       ├── dingux.png
│   │       ├── flip.png
│   │       ├── moonlight.png
│   │       ├── ...
│   │       └── {Resolution}
│   │           ├── app.png
│   │           ├── archive.png
│   │           └── ...
│   └── Folder
│       └── grid
│           ├── Atari 2600.png
│           ├── Atari 5200.png
│           ├── Atari 7800.png
│           ├── default.png
│           ├── default_focused.png
│           ├── ...
│           └── {Resolution}
│               ├── Atari 2600.png
│               ├── default.png
│               └── ...
```

### Displaying Grid Images

| Screen | Grid Path | File Name Logic |
|---|---|---|
| Applications | `/catalogue/Application/grid/` | File name from `ICON` variable in application script. Falls back to `app` if no `ICON` variable. |
| Collections | `/catalogue/Collection/grid/` | Matches the Collection name. |
| Content Explorer | `/catalogue/Folder/grid/` | Matches ROM folder name. If no match, looks for an image matching the catalogue name of the folder's assigned core. |

**Image search order:**

1. `/{Grid Path}/{Resolution}/{Filename}.png`
2. `/{Grid Path}/{Resolution}/default.png`
3. `/{Grid Path}/{Filename}.png`
4. `/{Grid Path}/default.png`

**`default.png`** is a fallback for when no matching image is found (commonly a question mark icon).

**Focused images** are overlaid on top of the grid item image to indicate the selected item:

- `{Filename}_focused.png` — custom focused indicator per item
- `default_focused.png` — fallback focused indicator for items without a specific one

These are searched in the same locations as regular grid icons.

> **Tip:** Use catalogue names for image file names (e.g., `/catalogue/Folder/grid/Sega Mega Drive - Genesis.png`) to ensure correct display regardless of how the user has named their ROM folders.

### Zipping Your Assets

1. Select the `catalogue` folder (and any other asset files).
2. Compress using WinRar (Windows), Keka (macOS), or 7zip (Linux/Windows).
3. Rename the file to `assets.muxzip`.
4. Place `assets.muxzip` at the root of your theme folder.

---

## Finishing Your Theme

### Creating a Preview Image

Most preview images display at 45% of the screen resolution. To create one:

1. Take a screenshot on your device using **MENU + PWR**, or create a representative image manually.
2. Resize it to 45% of your target device's screen resolution.
3. **Rename it to `preview.png`**.
4. Drop it into your theme's resolution folder (e.g., `./640x480/preview.png`) before zipping.

### Zipping Your Theme

> **Important:** Compress the *contents* of your theme folder — **not** the root folder itself.

1. Select `credits.txt`, `./640x480/preview.png`, `./image/`, `./scheme/`, and all other theme folders/files together.
2. Compress using WinRar (Windows), Keka (macOS), or 7zip (Linux/Windows).
3. Name the zip file whatever you choose.
4. **Change the extension from `.zip` to `.muxthm`** — e.g., `my_theme.muxthm`.

Your theme is now ready to install on your device or share with the community!

---

## Quick Reference: File Extensions

| Extension | Description |
|---|---|
| `.muxthm` | muOS theme archive (renamed `.zip`) |
| `.muxalt` | Alternative theme variant archive (renamed `.zip`) |
| `.muxzip` | Theme assets archive (renamed `.zip`) |
| `.ini` | Scheme configuration file |
| `.bin` | Compiled font file (LVGL format) |
| `.png` | Image file (backgrounds, glyphs, static images) |
| `.bmp` | Boot logo image (24-bit True Colour) |
| `.wav` | Sound file for navigation events |
| `.sh` | RGB configuration script |

---

## Community & Resources

- **Theme Library**: [theme.muos.dev](https://theme.muos.dev/)
- **Forum**: [community.muos.dev](https://community.muos.dev/)
- **Discord**: [discord.gg/muOS](https://discord.gg/muOS)
- **GitHub (Glyph list)**: [MustardOS/internal on GitHub](https://github.com/MustardOS/internal/tree/main/share/theme/active/glyph)
- **Font Converter (online)**: [lvgl.io/tools/fontconverter](https://lvgl.io/tools/fontconverter)
- **lv_font_conv (offline)**: [github.com/lvgl/lv_font_conv](https://github.com/lvgl/lv_font_conv)

---

*Documentation sourced from [muos.dev/themes](https://muos.dev/themes) and all sub-pages. Licensed under [CC Attribution-Noncommercial 4.0 International](https://creativecommons.org/licenses/by-nc/4.0/deed.en).*
