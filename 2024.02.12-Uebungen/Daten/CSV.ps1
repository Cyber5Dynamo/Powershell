#Referenzmodell


# 1. CSV Datei ein -> erledigt

$file = "data.csv"
$headers = "Type", "Name", "Beschreibung", "OU", "GroupMemberships"
$csv_datei = Import-Csv -Path $file -Header $headers
$dn = "DC=WinCore,DC=local"

# 2. Objekte anlegen

foreach ($zeile in $csv_datei) {
    # Objekte anlegen
    if ($zeile.Type -eq "OU") {
        # Prüfen ob Objekt bereits existiert
        if ((Get-ADOrganizationalUnit -Name) -ne $zeile.Name) {
            New-AdOrganizationalunit -Name $zeile.Name -Path $dn
        } else 
          write-output "OU mit dem Namen" $zeile.Name "kann nicht erstellt werden"
        # Zeile definiert eine OU -> OU anlegen
    }elseif ($zeile.Type -eq "User"){
        # Prüfen ob Objekt bereits existiert
        # Zeile definiert einen Benutzer -> Benuzter anlegen
    }elseif ($zeile.Type -eq "Group"){
        # Prüfen ob Objekt bereits existiert
        # Zeile definiert einen Gruppen -> Gruppe anlegen
        write-output "New-ADGroup -Name $zeile.Name -SamAccountName $zeile.Name -GroupCategory Security -GroupScope Global"
    }
}
    
# 3. Objekte zuweisen

foreach ($zeile in $csv_datei) {
    # Code
}