#1 Autoupdate workflow https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate
$checkver = "$env:SCOOP/apps/scoop/current/bin/checkver.ps1"
$dir = 'E:\GitApps\scoop-apps\bucket'
& $checkver -Dir $dir IDM
& $checkver -Dir $dir IDM -ForceUpdate
scoop install "$dir\IDM.json"
gsudo scoop install "$dir\IDM.json"
scoop uninstall IDM
gsudo scoop uninstall IDM
scoop update IDM -f
# git push
scoop update

& $checkver -Dir $dir *
& $checkver -Dir $dir * -Update
& $checkver -Dir $dir * -ForceUpdate
& $checkver -Dir $dir * -SkipUpdated
& $checkver -Dir $dir IDM -Version 0.37.0
& $checkver -Dir $dir IDM -Update -Version 0.37.0
& $checkver -Dir $dir IDM -Update -Version 642build32
scoop status
