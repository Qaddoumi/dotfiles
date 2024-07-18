# Path to the file containing the list of programs
# $filePath = ".\WINGET_Programs.txt"
# $filePath = ".\test.txt"
# Source the array definition script
. ".\WINGET_Programs.ps1"

# Function to test if winget is installed
function Test-Winget {
    Write-Output "Checking if winget is installed..."
    $wingetPath = (Get-Command winget -ErrorAction SilentlyContinue).Path
    if ($null -eq $wingetPath) {
        Write-Output "winget is not installed. Installing winget..."
        Install-Winget
    } else {
        Write-Output "winget is already installed at $wingetPath."
    }
}

# Function to install winget
function Install-Winget {
    # Download the latest winget installer
    $wingetInstallerUrl = "https://aka.ms/getwinget"
    $wingetInstallerPath = "$env:TEMP\wingetInstaller.msixbundle"
    Write-Output "Downloading winget installer from $wingetInstallerUrl..."
    Invoke-WebRequest -Uri $wingetInstallerUrl -OutFile $wingetInstallerPath
    
    # Install winget
    Write-Output "Installing winget from $wingetInstallerPath..."
    Add-AppxPackage -Path $wingetInstallerPath
    
    # Verify installation
    if (Get-Command winget -ErrorAction SilentlyContinue) {
        Write-Output "winget installed successfully."
    } else {
        Write-Output "Failed to install winget."
        exit 1
    }
}

# Function to install a program using winget
function Install-Program {
    param (
        [string]$program
    )
    Write-Output "Starting installation check for $program..."

    Write-Output "Checking if $program is already installed..."
    $installedPrograms = winget list | Select-String -Pattern $program
    if ($null -ne $installedPrograms) {
        Write-Output "Output from winget list:`n$($installedPrograms -join '; ')"
        Write-Output "Skipping installation of $program as it is already installed."
    } else {
        Write-Output "$program is not installed."
        Write-Output "Attempting to install $program..."
        try {
            $installArgs = "install --id $program --accept-package-agreements --accept-source-agreements"
            $process = Start-Process -FilePath "winget" -ArgumentList $installArgs -NoNewWindow -PassThru
            $process.WaitForExit()
            # Check the exit code of the process
            if ($process.ExitCode -eq 0) {
                # Move the cursor up one line
                Write-Host "`e[1A" -NoNewline
                # Clear the bottom line
                Write-Host "`e[K" -NoNewline  # Clear the current line from cursor to end of line
                Write-Host "Successfully Installed (ID): $program"
            } else {
                Write-Host "Failed to install $program. Exit code: $($process.ExitCode)"
            }

            # $installResult = winget install --id $program --accept-package-agreements --accept-source-agreements
            # if ($installResult -match "Successfully installed") {
            #     Write-Output "$program installed successfully."
            # } else {
            #     Write-Output "Failed to install $program. Exit code: $($installResult.ExitCode)"
            # }
        } catch {
            Write-Output "An error occurred while attempting to install $program. Error: $_"
        }
    }
}

# Main script execution
Write-Output "Starting script execution...`n"

# Ensure winget is installed
Test-Winget

# Read the list of programs from the file
# Write-Output "Reading list of programs from $filePath..."
# $programs = Get-Content -Path $filePath

# Install each program
foreach ($program in $WINGET_PROGRAMS_ID) {
    Write-Output "`n================================================================"
    Write-Output "`nProcessing program(ID): $program"
    Install-Program -program $program
}

Write-Output "`n================================================================"
Write-Output "Script execution Finished.`n"