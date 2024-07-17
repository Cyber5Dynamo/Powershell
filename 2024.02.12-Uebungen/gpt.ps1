# Pfad zur CSV-Datei
$csvPath = "data.csv"

# CSV-Daten laden
$csvData = Import-Csv $csvPath

# Funktion zum Erstellen einer Liste aller Benutzer in einer bestimmten OU
function GetUsersInOU {
    param($ou)
    $users = $csvData | Where-Object { $_.OU -eq $ou -and $_.Type -eq "User" }
    return $users
}

# Funktion zum Erstellen einer Liste aller Benutzer in einer bestimmten Gruppe
function GetUsersInGroup {
    param($group)
    $users = $csvData | Where-Object { $_.'GroupMemberships*' -like "*$group*" -and $_.Type -eq "User" }
    return $users
}

# Liste aller Organisationseinheiten (OUs)
$ous = $csvData | Select-Object -ExpandProperty OU -Unique

# Liste aller Gruppen
$groups = $csvData | ForEach-Object { $_.'GroupMemberships*'.Split(',')} | Select-Object -Unique

# Ausgabe aller Benutzer in jeder OU
foreach ($ou in $ous) {
    Write-Host "Benutzer in $ou"
    GetUsersInOU $ou | Select-Object Name
}

