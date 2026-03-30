$files = git ls-files --others --exclude-standard
foreach ($file in $files) {
    if ($file) {
        Write-Host "Adding and committing $file..."
        git add "$file"
        git commit -m "Initialize commit for $file"
    }
}
$modified_files = git ls-files --modified --exclude-standard
foreach ($file in $modified_files) {
    if ($file) {
        Write-Host "Adding and committing modified $file..."
        git add "$file"
        git commit -m "Update commit for $file"
    }
}
Write-Host "Individual commits complete."
