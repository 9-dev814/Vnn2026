param(
    [Parameter(Mandatory=$false)]
    [string]$RepoUrl = "https://github.com/YOUR_USERNAME/apex-sdi-roblox-private.git",
    [Parameter(Mandatory=$false)]
    [string]$Branch = "main",
    [Parameter(Mandatory=$false)]
    [string]$CommitMsg = "feat: update APEX SDI Roblox 12-tab script v4"
)
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
if (-not (Test-Path ".git")) { git init -b $Branch }
git add .gitignore APEX_SDI_ROBLOX_12TABS.lua
if (-not (git diff --cached --quiet)) { git commit -m $CommitMsg }
if ((git remote) -contains "origin") { git remote set-url origin $RepoUrl } else { git remote add origin $RepoUrl }
git branch -M $Branch
git push -u origin $Branch
Write-Host "Hoan tat dua code len GitHub an toan!" -ForegroundColor Green
