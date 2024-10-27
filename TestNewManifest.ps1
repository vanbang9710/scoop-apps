#1 Autoupdate workflow https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate
$checkver = "$env:SCOOP/apps/scoop/current/bin/checkver.ps1"
$dir = 'E:\GitApps\scoop-apps\bucket'
scoop config debug $true
& $checkver -Dir $dir hotkey-detective
& $checkver -Dir $dir hotkey-detective -ForceUpdate
scoop install E:\GitApps\scoop-apps\bucket\hotkey-detective.json
scoop update hotkey-detective -f
scoop uninstall hotkey-detective -p
# git push
scoop update

& $checkver -Dir $dir *
& $checkver -Dir $dir * -Update
& $checkver -Dir $dir * -ForceUpdate
& $checkver -Dir $dir * -SkipUpdated
& $checkver -Dir $dir hotkey-detective -Version 4.6.2
& $checkver -Dir $dir hotkey-detective -Update -Version 4.6.2
scoop status
