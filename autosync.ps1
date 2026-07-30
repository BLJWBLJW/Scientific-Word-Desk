# --- Git Autosync Script (Safe + Low CPU) ---

# Change this to your repo path if needed
$repo = "C:\Users\bqw\OneDrive\GitHub\Scientific-Word-Desk"

# Move into the repo
Set-Location $repo

while ($true) {

    # Stage all changes
    git add -A

    # Check if anything actually changed
    $changes = git status --porcelain

    if ($changes) {
        # Commit only when needed
        git commit -m "Auto-sync"
        git push
    }

    # Sleep to prevent CPU + shell lag
    Start-Sleep -Seconds 60
}
