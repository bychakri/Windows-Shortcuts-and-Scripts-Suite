Gui -MinimizeBox -MaximizeBox -SysMenu +AlwaysOnTop
Gui Font, s11 q0, Calibri
Gui Add, Tab, x0 y0 w500 h160 +0x8, Options|Current Project|File Shortcuts

Gui Show, w498 h157, Window
Return

GuiEscape:
GuiClose:
    Gui Cancel
