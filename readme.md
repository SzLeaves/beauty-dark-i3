# beauty-dark-i3
A **dark** theme about i3wm, include dunst, picom, polybar and rofi.  

## Dependency
* i3wm (or i3-gaps)
* qt5ct, qt5-styleplugins (unified appearance between gtk and qt)
* nm-applet ([NetworkManager](https://wiki.archlinux.org/index.php/NetworkManager))
* xfce4-power-manager (used to adjust backlight)
* dunst (used to system notice)
* picom (or compton)
* polybar
* rofi
* terminator
* feh (used to set background image)
* redshift (used to set color temperature)
* pulseaudio (pavucontrol)
* blueman (blueman-manager)

## Location
`$HOME/.config/i3`  

## Unified Appearance (Qt and GTK)
**set environment variable in `/etc/profile`**  
`export QT_QPA_PLATFORMTHEME=qt5ct`  
and run this command `qt5ct` in terminal  

If you want the qt4/qt5 appearance the same as gtk theme, set style as `gtk2`.   
You can also change the fonts setting.
> more detail: [Uniform look for Qt and GTK applications](https://wiki.archlinux.org/index.php/Uniform_look_for_Qt_and_GTK_applications)

## Key Setting
It is basically the same as i3wm normal configure.  
There are some new functional keys in this i3wmconfig:  
* `mod + T`         color temperature adjust  
* `mod + Shift + T` cancel color temperature adjust  
* `mod + F1`        open the pulseaudio to control volume
* `mod + F4`        open the bluetooth manager

## Thanks :)
* [aeghn/prettyi3](https://github.com/aeghn/prettyi3)
* [jorhelp/Config_for_Linux](https://github.com/jorhelp/Config_for_Linux)
* [i3 wiki](https://wiki.archlinux.org/index.php/I3)
* [polybar wiki](https://github.com/polybar/polybar/wiki)
* [picom wiki](https://wiki.archlinux.org/index.php/Picom)
