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
            Write-Output $process.ExitCode
            # TODO: fix checking for error
            if ($process.ExitCode -eq 1) {
                # Move the cursor up one line
                Write-Host "`e[1A" -NoNewline
                # Clear the bottom line
                Write-Host "`e[K" -NoNewline  # Clear the current line from cursor to end of line
                Write-Host "Successfully Installed (ID): $program"
            } else {
                Write-Host "Failed to install $program. Exit code: $($process.ExitCode)"
            }
        } catch {
            Write-Output "An error occurred while attempting to install $program. Error: $_"
        }
    }
}

Write-Output "`n================================================================"
Write-Output "`n   === Refresh Environment Variabels : ===`n"
& .\RefreshEnvironmentVariabels.ps1
Write-Output "`n================================================================"

# Main script execution
Write-Output "`n   === Start Installing Programs : ==="

# Source the variable definition script (List of Programs IDs)
. ".\WINGET_Programs.ps1"

# Installing each program
for ($i = 0; $i -lt $WINGET_PROGRAMS_ID.Length; $i++) {
    $program = $WINGET_PROGRAMS_ID[$i]
    Write-Output "`n================================================================"
    Write-Output "`n ($($i + 1)/$($WINGET_PROGRAMS_ID.Length)) - Processing program(ID) : $program"
    Install-Program -program $program
}

Write-Output "`n================================================================"
Write-Output "`nInstalling programs Finished."

Write-Output "`n================================================================"
Write-Output "`n   === Refresh Environment Variabels : ===`n"
& .\RefreshEnvironmentVariabels.ps1
