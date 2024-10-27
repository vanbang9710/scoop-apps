#1 Autoupdate workflow https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate
$checkver = "$env:SCOOP/apps/scoop/current/bin/checkver.ps1"
$dir = 'E:\GitApps\scoop-apps\bucket'
scoop config debug $true
& $checkver -Dir $dir HandyOutliner
& $checkver -Dir $dir HandyOutliner -ForceUpdate
scoop install E:\GitApps\scoop-apps\bucket\HandyOutliner.json
scoop update HandyOutliner -f
scoop uninstall HandyOutliner -p
# git push
scoop update

& $checkver -Dir $dir *
& $checkver -Dir $dir * -Update
& $checkver -Dir $dir * -ForceUpdate
& $checkver -Dir $dir * -SkipUpdated
& $checkver -Dir $dir HandyOutliner -Version 4.6.2
& $checkver -Dir $dir HandyOutliner -Update -Version 4.6.2
scoop status
