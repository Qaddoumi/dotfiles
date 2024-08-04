# TODO: Implement This
# To get the LayoutModification using powershell 'Export-StartLayout -Path ".\LayoutModification.json"'
# Application User Model ID AUMID "Get-StartApps"
# To import the layout 'Import-StartLayout -LayoutPath ".\LayoutModification.json" -MountPath $env:SystemDrive\'


$LayoutModificationJSON = @"
{
    "pinnedList": [
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Microsoft Edge.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Word.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Excel.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\PowerPoint.lnk"
        },
        {
            "packagedAppId": "windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel"
        },
        {
            "desktopAppLink": "%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\Recycle Bin.lnk"
        },
        {
            "packagedAppId": "Microsoft.OutlookforWindows_8wekyb3d8bbwe!Microsoft.OutlookforWindows"
        },
        {
            "packagedAppId": "Microsoft.WindowsStore_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.Windows.Photos_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.GamingApp_8wekyb3d8bbwe!Microsoft.Xbox.App"
        },
        {
            "packagedAppId": "Clipchamp.Clipchamp_yxz26nhyzhsrt!App"
        },
        {
            "packagedAppId": "Microsoft.Todos_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.WindowsAlarms_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.WindowsNotepad_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.Paint_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.ScreenSketch_8wekyb3d8bbwe!App"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\OneNote.lnk"
        },
        {
            "desktopAppLink": "%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\System Tools\\Control Panel.lnk"
        },
        {
            "packagedAppId": "Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe!App"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Macrium\\Reflect\\Macrium Reflect.lnk"
        },
        {
            "packagedAppId": "4789ZeroByte.NetSpeedMeter_gvheqymwk6zrr!App"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\NVIDIA Corporation\\GeForce Experience.lnk"
        },
        {
            "packagedAppId": "Microsoft.WindowsTerminal_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.BingWeather_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.WindowsScan_8wekyb3d8bbwe!App"
        },
        {
            "packagedAppId": "Microsoft.Whiteboard_8wekyb3d8bbwe!Whiteboard"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Google Chrome.lnk"
        },
        {
            "desktopAppLink": "%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\Chrome Apps\\Chrome Remote Desktop.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Google Drive.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Firefox.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Git\\Git GUI.lnk"
        },
        {
            "desktopAppLink": "%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\Visual Studio Code\\Visual Studio Code.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Visual Studio 2022.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Visual Studio Installer.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\VMware\\VMware Workstation Pro.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\VMware\\VMware Workstation 17 Player.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\VMware\\Virtual Network Editor.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\LibreOffice 24.2\\LibreOffice.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\LibreOffice 24.2\\LibreOffice Writer.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\LibreOffice 24.2\\LibreOffice Calc.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\LibreOffice 24.2\\LibreOffice Draw.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\ONLYOFFICE\\ONLYOFFICE Editors.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\ONLYOFFICE\\New spreadsheet.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\ONLYOFFICE\\New PDF Form.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\ONLYOFFICE\\New document.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\PDFtk - The PDF Toolkit\\PDFtk - The PDF Toolkit.lnk"
        },
        {
            "desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\NAPS2\\NAPS2.lnk"
        },
        {
            "desktopAppLink": "%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\procmon.lnk"
        }
    ]
}
"@ 

# Path to the temporary file
$tempFilePath = [System.IO.Path]::GetTempFileName()
$tempFilePath = [System.IO.Path]::ChangeExtension($tempFilePath, '.json')

# Save the JSON string to the temporary file
$LayoutModificationJSON | Out-File -FilePath $tempFilePath -Encoding utf8

# Import the layout from the temporary file
Import-StartLayout -LayoutPath $tempFilePath -MountPath $env:SystemDrive\

# Optionally, remove the temporary file after importing the layout
Remove-Item -Path $tempFilePath -Force
