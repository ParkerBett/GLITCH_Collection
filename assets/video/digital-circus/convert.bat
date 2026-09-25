@echo off
setlocal enabledelayedexpansion

:: Create an output directory to prevent overwriting originals
if not exist "converted_videos" mkdir "converted_videos"

:: Loop through all .mp4 files in the current directory
for %%f in (*.mp4) do (
    echo Processing: %%f
    
    :: Convert using H.264 (video) and AAC (audio)
    ffmpeg -i "%%f" ^
        -c:v libx264 -pix_fmt yuv420p -preset medium -crf 23 ^
        -c:a aac -b:a 128k ^
        "converted_videos\%%f"
)

echo.
echo All conversions complete! Check the "converted_videos" folder.
pause
