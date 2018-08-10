@echo off
set maindir=%*
for %%f in ("%maindir%\images\svgsteps\*.svg") do (
    echo %%~f
    echo %maindir%\images\pngsteps\%%~nf.png
    "C:\Program Files\Inkscape\inkscape.exe" ^
      -z ^
      --export-background-opacity=0 ^
      --export-width=1920 ^
      --export-png="%maindir%\images\pngsteps\%%~nf.png" ^
      --file="%%~f"
)