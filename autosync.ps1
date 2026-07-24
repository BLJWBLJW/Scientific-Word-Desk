while ($true) {
    $repo = "C:\Users\bqw\OneDrive\GitHub\Scientific-Word-Desk"
    Set-Location $repo

    git add -A

    $changes = git status --porcelain
    if ($changes) {
        $timestamp = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
        git commit -m "Auto-sync at $timestamp"
        git push
    }

    Start-Sleep -Seconds 10
}
