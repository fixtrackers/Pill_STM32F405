for /F "delims=" %%1 IN ('dir /B /A-D /s "Project\*.html" ^| findstr /R "Rule"') do xcopy /y "%%1" "Images\"

del /s *.ERR
del /s *.eco
Rem del /s *.htm
del /s *.SchDocPreview
del /s *.PcbDocPreview
del /s *.pcbdoc_viewstate
del /s *.TxtPreview
del /s *.NetPreview
del /s *.$$Preview
del /s *.LOG
del /s "Status Report.Txt"
del /s protel_design_files
rmdir /S /Q "Project\__Previews"
rmdir /S /Q "Project\History"
rmdir /S /Q "PCB\__Previews"

for /f "delims=" %%a in ('dir /ad /b /s "Project\" ^| findstr /r "Logs"') do rmdir /S /Q "%%a"

rmdir /S /Q "Schematic\__Previews"
rmdir /S /Q "Libs\__Previews"
rmdir /S /Q "Fabrication Output\Gerber\__Previews"
rmdir /S /Q "Fabrication Output\NC Drill\__Previews"
rmdir /S /Q "Assembly Output\Pick Place\__Previews"
rmdir /S /Q "Assembly Output\Test Point\__Previews"

