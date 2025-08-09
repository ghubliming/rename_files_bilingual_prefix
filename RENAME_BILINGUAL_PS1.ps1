$folder = "D:\MISC_SSD\WORKINGSPACE\RENAME_BILINGUAL"

Get-ChildItem -Path $folder -File | ForEach-Object {
    $newName = "Bilingual_" + $_.Name
    $newFullPath = Join-Path -Path $folder -ChildPath $newName
    Rename-Item -LiteralPath $_.FullName -NewName $newFullPath
}
