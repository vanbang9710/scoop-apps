#1 Autoupdate workflow https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate
$checkver = "$env:SCOOP/apps/scoop/current/bin/checkver.ps1"
$dir = 'E:\GitApps\scoop-apps\bucket-reference'
scoop config debug $true
& $checkver -Dir $dir mpv
& $checkver -Dir $dir mpv -ForceUpdate
scoop install "$dir\mpv.json"
scoop update mpv -f
scoop uninstall mpv
# git push
scoop update

& $checkver -Dir $dir *
& $checkver -Dir $dir * -Update
& $checkver -Dir $dir * -ForceUpdate
& $checkver -Dir $dir * -SkipUpdated
& $checkver -Dir $dir mpv -Version 0.37.0
& $checkver -Dir $dir mpv -Update -Version 0.37.0
scoop status
