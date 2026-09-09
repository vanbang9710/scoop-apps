#1 Autoupdate workflow https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate
$checkver = "$env:SCOOP/apps/scoop/current/bin/checkver.ps1"
$dir = 'E:\GitApps\scoop-apps\bucket'
& $checkver -Dir $dir qttabbar-indiff-np
& $checkver -Dir $dir qttabbar-indiff-np -ForceUpdate
scoop install "$dir\qttabbar-indiff-np.json"
gsudo scoop install "$dir\qttabbar-indiff-np.json"
scoop uninstall qttabbar-indiff-np
gsudo scoop uninstall qttabbar-indiff-np
scoop update qttabbar-indiff-np -f
# git push
scoop update

& $checkver -Dir $dir *
& $checkver -Dir $dir * -Update
& $checkver -Dir $dir * -ForceUpdate
& $checkver -Dir $dir * -SkipUpdated
& $checkver -Dir $dir qttabbar-indiff-np -Version 0.37.0
& $checkver -Dir $dir qttabbar-indiff-np -Update -Version 0.37.0
scoop status
