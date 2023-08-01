#1 Autoupdate workflow https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate
$checkver = "$env:SCOOP/apps/scoop/current/bin/checkver.ps1"
$dir = 'E:\GitApps\scoop-apps\bucket'

# & $checkver ./obs-plugin-input-overlay.json
scoop config debug $true
& $checkver -Dir $dir obs-plugin-input-overlay
& $checkver -Dir $dir obs-plugin-input-overlay -ForceUpdate
scoop install E:\GitApps\scoop-apps\bucket\obs-plugin-input-overlay.json
scoop update obs-plugin-input-overlay -f
scoop uninstall obs-plugin-input-overlay -p
scoop update

& $checkver -Dir $dir *
& $checkver -Dir $dir * -Update
& $checkver -Dir $dir * -ForceUpdate
& $checkver -Dir $dir * -SkipUpdated
& $checkver -Dir $dir obs-plugin-input-overlay -Version 4.6.2
& $checkver -Dir $dir obs-plugin-input-overlay -Update -Version 4.6.2
scoop status
