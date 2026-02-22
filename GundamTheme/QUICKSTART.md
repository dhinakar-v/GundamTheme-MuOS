# Quick Start Guide

## 🚀 Fastest Way to Get Started

### 1. Add a Background Image (2 minutes)

The theme needs at least one background image to look good. Here's the quickest way:

**Option A: Create a simple solid color background**
```bash
# If you have ImageMagick installed:
convert -size 720x480 xc:#1a1a2e 720x480/image/wall/default.png

# Or use any online tool:
# 1. Go to https://www.photopea.com/
# 2. File → New (720x480)
# 3. Fill with color #1a1a2e
# 4. File → Export as PNG
# 5. Save to: 720x480/image/wall/default.png
```

**Option B: Use a photo/image**
1. Find any image you like
2. Resize to 720x480 pixels
3. Save as `720x480/image/wall/default.png`

**Online resizing tools:**
- https://www.iloveimg.com/resize-image
- https://www.photopea.com/

### 2. Package the Theme (30 seconds)

**On Linux/Mac:**
```bash
cd GundamTheme
chmod +x package-theme.sh
./package-theme.sh
```

**On Windows:**
1. Open the `GundamTheme` folder
2. Select ALL files and folders inside (but not the GundamTheme folder itself)
3. Right-click → Send to → Compressed (zipped) folder
4. Rename from `GundamTheme.zip` to `GundamTheme.muxthm`

**Manual zip command:**
```bash
cd GundamTheme
zip -r GundamTheme.muxthm . -x "*.sh" -x "README.md" -x "QUICKSTART.md"
```

### 3. Install on Device (1 minute)

1. Copy `GundamTheme.muxthm` to your device at `/MUOS/theme/`
2. On device: **Configuration → Customisation**
3. Select "GundamTheme" and press **A** to activate

Done! 🎉

---

## 🎨 Easy Customizations

### Change the Color Scheme

**Want a different accent color?** Edit these files:
- `scheme/global.ini`
- `720x480/scheme/default.ini`

Replace `0ead69` (green) with your color:
- Red: `e94560`
- Blue: `3b82f6`
- Purple: `a855f7`
- Orange: `fb923c`
- Pink: `ec4899`

**Want a different background color?**

In `scheme/global.ini`, change:
```ini
[background]
BACKGROUND=1a1a2e          ← Change this
BACKGROUND_GRADIENT_COLOR=16213e  ← And this
```

### Add More Screens

Create specific backgrounds for different screens:
```
720x480/image/wall/
├── default.png        # All screens (fallback)
├── muxlaunch.png      # Main menu
├── muxconfig.png      # Configuration menu
├── muxcharge.png      # Charging screen
└── muxplore.png       # Content explorer
```

### Make Text Bigger/Smaller

You'll need custom fonts. See the main README.md for font conversion instructions.

---

## 📦 What's Included

✅ Complete color scheme (dark blue + green)
✅ All UI elements styled
✅ Header and footer configured
✅ List styles (focused/unfocused)
✅ Navigation button colors
✅ Keyboard, notifications, and help windows
✅ Progress bars and counters
✅ 720x480 resolution support

## ❓ Common Issues

**"Theme doesn't show up"**
- Make sure you zipped the *contents*, not the folder
- File must end in `.muxthm`, not `.zip`

**"Theme looks broken"**
- Add a background image to `720x480/image/wall/default.png`
- Background must be exactly 720x480 pixels
- Must be PNG format

**"I want to change X"**
- Check the main `README.md` for customization options
- See `muos-theme-documentation.md` for all available settings

---

## 🎯 Next Level Enhancements

Once you have the basic theme working:

1. **Add a preview image** → `720x480/preview.png` (324x216 pixels)
2. **Add custom icons** → `720x480/glyph/muxlaunch/*.png`
3. **Add sound effects** → `sound/*.wav`
4. **Add boot logo** → `720x480/image/bootlogo.bmp`
5. **Create theme alternatives** → `alternate/*.ini`

See the full README.md for details on each!

---

**Need Help?**
- Check `README.md` for detailed instructions
- See `muos-theme-documentation.md` for the complete reference
- Visit https://community.muos.dev/ for support
