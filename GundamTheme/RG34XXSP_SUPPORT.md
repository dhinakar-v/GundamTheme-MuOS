# RG34XXSP Theme

GundamTheme is designed for the **RG34XXSP** device!

## Device Specifications

- **Resolution**: 720 x 480 pixels
- **Aspect Ratio**: 3:2
- **Device**: RG34XXSP

## What Was Added

### 1. New Folder Structure

```
GundamTheme/
└── 720x480/                     # NEW - RG34XXSP support
    ├── scheme/
    │   └── default.ini          # NEW - Resolution-specific settings
    └── image/
        └── wall/                # Ready for background images
```

### 2. Adjusted Settings for Wider Screen

The `720x480/scheme/default.ini` file has been configured with:

- **CONTENT_WIDTH**: 700 (adjusted from 620 for the wider screen)
- **BAR_WIDTH**: 695 (adjusted from 615)
- **BAR_PROGRESS_WIDTH**: 630 (adjusted from 550)
- **CONTENT_HEIGHT**: 396

All other settings (colors, transparency, fonts, etc.) are identical to maintain visual consistency across devices.

### 3. Updated Documentation

The README.md has been updated with:
- Dual resolution support information
- Instructions for creating 720x480 backgrounds
- Preview image dimensions (324x216 for RG34XXSP)
- Multi-resolution customization tips

## Next Steps to Complete Your Theme

### Required: Add Background Images

Create a 720x480 PNG background image and place it at:
```
720x480/image/wall/default.png
```

**Quick ways to create a background:**

1. **Use Photopea** (free online):
   - Go to https://www.photopea.com/
   - Create new image: 720 x 480 pixels
   - Design your background (gradient, solid color, etc.)
   - File → Export As → PNG
   - Save as `default.png` in `720x480/image/wall/`

2. **Use existing image**:
   - Find an image you like
   - Resize to exactly 720x480
   - Save as PNG
   - Place in `720x480/image/wall/`

3. **Simple solid color**:
   - Any image editor
   - New image: 720x480
   - Fill with your color
   - Save as PNG

### Recommended: Create Preview Image

1. Install theme on your RG34XXSP
2. Take screenshot (MENU + PWR)
3. Resize to 324x216 pixels (45% of 720x480)
4. Save as `720x480/preview.png`

### Optional Enhancements

**Boot Logo** (720x480):
- Create 24-bit BMP file
- Save as `720x480/image/bootlogo.bmp`

**Custom Glyphs**:
- Create PNG icons
- Place in `720x480/glyph/muxlaunch/`
- Or use root `glyph/` folder to share across resolutions

**Program-Specific Backgrounds**:
- `720x480/image/wall/muxlaunch.png` - Main menu
- `720x480/image/wall/muxconfig.png` - Configuration
- `720x480/image/wall/muxcharge.png` - Charging screen

## How It Works

When you install this theme:

1. The muOS system detects your device resolution
2. It loads `scheme/global.ini` (applies to all resolutions)
3. It loads the 720x480 folder with RG34XXSP-specific settings
4. Resolution-specific images and settings are applied

## Installation

### Package the Theme

1. Navigate to `GundamTheme` folder
2. Select **all contents** (not the folder itself):
   - `scheme/`
   - `720x480/`
   - `credits.txt`
   - etc.
3. Compress to ZIP
4. Rename from `.zip` to `.muxthm`

### Install on RG34XXSP

1. Copy the `.muxthm` file to `/MUOS/theme/` on your device
2. Go to: **Configuration → Customisation**
3. Select your theme and press A to activate

## Color Scheme (Same for All Resolutions)

- **Background**: Dark blue gradient (#1a1a2e → #16213e)
- **Header/Footer**: Deep blue (#0f3460)
- **Accent**: Green (#0ead69)
- **Text**: Light gray (#f1f5f9)
- **A Button**: Green (#0ead69)
- **B Button**: Red (#e94560)
- **X Button**: Blue (#3b82f6)
- **Y Button**: Yellow (#fbbf24)

## Testing Tips

1. **Start simple**: Add just `default.png` background first
2. **Test early**: Install on device to see how it looks
3. **Adjust as needed**: Tweak colors/positions in `.ini` files
4. **Compare resolutions**: If you have multiple devices, ensure consistency

## Customization

To change colors or settings:

**For all devices:**
- Edit `scheme/global.ini`

**For RG34XXSP only:**
- Edit `720x480/scheme/default.ini`

**For specific screen (e.g., main menu) on RG34XXSP:**
- Create `720x480/scheme/muxlaunch.ini`

## Resources

- **Official Docs**: https://muos.dev/themes
- **Theme Gallery**: https://theme.muos.dev/
- **Community**: https://community.muos.dev/
- **Image Editor**: https://www.photopea.com/ (free)
- **Font Converter**: https://lvgl.io/tools/fontconverter

---

**Your theme is ready for RG34XXSP!** 🎮

Just add background images and package it up to start using on your device.
