#1 Autoupdate workflow https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate
$checkver = "$env:SCOOP/apps/scoop/current/bin/checkver.ps1"
$dir = 'E:\GitApps\scoop-apps\bucket'

# & $checkver ./mpv-webm.json
scoop config debug $true
& $checkver -Dir $dir mpv-webm
& $checkver -Dir $dir mpv-webm -ForceUpdate

& $checkver -Dir $dir *
& $checkver -Dir $dir * -Update
& $checkver -Dir $dir * -ForceUpdate
& $checkver -Dir $dir * -SkipUpdated
& $checkver -Dir $dir mpv-webm -Version 4.6.2
& $checkver -Dir $dir mpv-webm -Update -Version 4.6.2
scoop update
scoop status
