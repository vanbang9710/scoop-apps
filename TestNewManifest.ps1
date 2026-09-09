#1 Autoupdate workflow https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate
$checkver = "$env:SCOOP/apps/scoop/current/bin/checkver.ps1"
$dir = 'E:\GitApps\scoop-apps\bucket'
& $checkver -Dir $dir aris
& $checkver -Dir $dir aris -ForceUpdate
scoop install "$dir\aris.json"
scoop uninstall aris
scoop update aris -f
# git push
scoop update

& $checkver -Dir $dir *
& $checkver -Dir $dir * -Update
& $checkver -Dir $dir * -ForceUpdate
& $checkver -Dir $dir * -SkipUpdated
& $checkver -Dir $dir aris -Version 0.37.0
& $checkver -Dir $dir aris -Update -Version 0.37.0
scoop status
