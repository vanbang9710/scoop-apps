#1 Autoupdate workflow https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate
$checkver = "$env:SCOOP/apps/scoop/current/bin/checkver.ps1"
$dir = 'E:\GitApps\scoop-apps\bucket'
& $checkver -Dir $dir mpv-webm
& $checkver -Dir $dir mpv-webm -ForceUpdate
scoop install "$dir\mpv-webm.json"
scoop update mpv-webm -f
scoop uninstall mpv-webm
# git push
scoop update

& $checkver -Dir $dir *
& $checkver -Dir $dir * -Update
& $checkver -Dir $dir * -ForceUpdate
& $checkver -Dir $dir * -SkipUpdated
& $checkver -Dir $dir mpv-webm -Version 0.37.0
& $checkver -Dir $dir mpv-webm -Update -Version 0.37.0
scoop status
