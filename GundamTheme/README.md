# Gundam Theme for MustardOS

A clean, modern theme with a dark blue color scheme and green accents.

**Supported Resolutions:**
- 720x480 (3:2 aspect ratio - RG34XXSP)

## 🎨 Color Scheme

- **Primary Background**: Dark blue gradient (#1a1a2e → #16213e)
- **Header/Footer**: Deep blue (#0f3460)
- **Accent/Focus**: Vibrant green (#0ead69)
- **Text**: Light gray/white (#f1f5f9)
- **Buttons**:
  - A Button: Green (#0ead69)
  - B Button: Red (#e94560)
  - X Button: Blue (#3b82f6)
  - Y Button: Yellow (#fbbf24)

## 📁 Current Structure

```
GundamTheme/
├── scheme/
│   └── global.ini          # Global color and style settings
├── 720x480/                # For RG34XXSP (3:2 aspect ratio)
│   ├── scheme/
│   │   └── default.ini     # Resolution-specific settings
│   └── image/
│       └── wall/           # Background images go here
├── credits.txt             # Theme information
└── README.md              # This file
```

## ✅ Completed

- [x] Folder structure for 720x480 resolution
- [x] Global scheme file with custom colors
- [x] 720x480 resolution scheme file (RG34XXSP)
- [x] Credits file
- [x] All UI elements styled (lists, navigation, keyboard, notifications, etc.)

## 📝 To Complete Your Theme

### 1. Add Background Images (Required)

Create background images for 720x480 resolution:

```
720x480/image/wall/default.png
```

This will be used as the default background for all screens.

**Optional**: Add program-specific backgrounds:
- `720x480/image/wall/muxlaunch.png` - Main menu
- `720x480/image/wall/muxconfig.png` - Configuration
- `720x480/image/wall/muxcharge.png` - Charging screen
- etc.

### 2. Create Preview Images (Recommended)

1. Take a screenshot on your device (MENU + PWR)
2. Resize it to 324x216 (45% of 720x480)
3. Save as `720x480/preview.png`

### 3. Optional Enhancements

#### Add Custom Glyphs
Place PNG icons in the resolution folder:
```
720x480/glyph/muxlaunch/
├── explore.png
├── favourite.png
├── history.png
├── apps.png
├── info.png
├── config.png
├── reboot.png
└── shutdown.png
```

Or place them in the root `glyph/` folder.

#### Add Custom Fonts
Convert TTF fonts to .bin format using lv_font_conv and place in:
```
font/default.bin
```

#### Add Sound Effects
Place .wav files in:
```
sound/
├── navigate.wav
├── confirm.wav
├── back.wav
└── error.wav
```

#### Add Boot Logo
Create a 24-bit BMP file for 720x480 resolution:
```
720x480/image/bootlogo.bmp
```

## 🎯 How to Install

### Package the Theme

1. Navigate to the `GundamTheme` folder
2. Select **all contents** (not the folder itself):
   - `scheme/`
   - `720x480/`
   - `credits.txt`
   - etc.
3. Compress to ZIP using your preferred tool:
   - Windows: WinRAR, 7-Zip
   - macOS: Keka, built-in compression
   - Linux: 7zip, zip command
4. Rename the file from `.zip` to `.muxthm`
   - Example: `GundamTheme.zip` → `GundamTheme.muxthm`

### Install on Device

1. Copy the `.muxthm` file to your device at: `/MUOS/theme/`
2. On your device, go to: **Configuration → Customisation**
3. Select your theme and press A to activate

## 🔧 Customization

All colors and settings can be modified in the `.ini` files:

- `scheme/global.ini` - Affects all screens
- `720x480/scheme/default.ini` - Affects all screens for RG34XXSP
- Add `720x480/scheme/muxlaunch.ini` for main menu-only changes

### Quick Color Changes

To change the accent color from green to another color:
1. Open both `.ini` files
2. Find all instances of `0ead69` (current green)
3. Replace with your hex color (without #)

### Useful Settings to Tweak

- **List item count**: `CONTENT_ITEM_COUNT` in `[misc]`
- **Header/footer height**: `HEADER_HEIGHT`, `FOOTER_HEIGHT`
- **Transparency**: Any `_ALPHA` setting (0-255)
- **Border radius**: Any `_RADIUS` setting (0=square, 10+=round)

## 📚 Resources

- **Official Docs**: https://muos.dev/themes
- **Theme Gallery**: https://theme.muos.dev/
- **Community Forum**: https://community.muos.dev/
- **Font Converter**: https://lvgl.io/tools/fontconverter

## 🎨 Creating Background Images

This theme is designed for **RG34XXSP (720x480)** resolution.

### Simple Solid Color
Use any image editor to create a 720x480 PNG with your desired color.

### Gradient Background
1. Open Photopea (free): https://www.photopea.com/
2. Create new image: 720x480
3. Use Gradient Tool with your colors
4. Export as PNG

### Using Photos
1. Find/create an image
2. Resize to 720x480
3. Save as PNG
4. Place in `720x480/image/wall/`

## 💡 Tips

- Start simple: just add `default.png` background
- Test on device before adding more features
- Use high contrast colors for readability
- Keep file sizes reasonable (compress PNGs)
- Check the default MustardOS theme for reference

## 🆘 Troubleshooting

**Theme doesn't appear**: Make sure you zipped the *contents*, not the folder itself.

**Colors look wrong**: Verify hex codes don't have `#` prefix in .ini files.

**Images don't show**: Check file paths and ensure PNG format (not JPG).

**Text is hard to read**: Increase contrast between text and background colors.

---

Enjoy your custom theme! 🎮
