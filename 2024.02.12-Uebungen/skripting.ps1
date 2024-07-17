# Benutzer aus einer Datei einlesen

# Für jeden Namen soll ein Benutzer angelegt werden
# Abhängig vom Namen wollen wir den Benutzer einer bestimmten Gruppe hinzufügen

# Gruppe 1 mit kurzen namen
# Gruppe 2 mit langen namen


$file ="data.csv"


#$alle_benutzer =Get-Content -path $file # Benutzer werden aus usernamen.txt eingelesen
$uebung = import-csv -path $file -Header $headers
$headers = "Einheit", "Name", "Beschreibung", "Position"

Write-Output $uebung
if ($bedingung1 -or $bedingung2){
    Write-Output "richtig"
}

foreach ($member in $uebung){
    Write-Host $member.Name hat die Position $member.Position
}

    