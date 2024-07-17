# String = Text, steht in Anfuehrungszeichen
# Integer = Ganzzahl, keine Anfuehrungszeichen
# Objekt

$Variable = "Willkommen in der Matrix" # String



$file = Get-ChildItem .\Basics.ps1

#Write-Output $file | Select-Object -Property *

# If/Else sentence
$Zahl = 7 # Integer
$text = 'Ich bin Neo'

If ($text -match 'Neo') 
{
    Write-Output "Erfolgreich"
} 
Else 
{
    Write-Output "Nicht erfolgreich"
}


# For-Loop - Schleife
$Array = (5, 7, "Text", $file)
foreach ($Element in $Array){
    Write-Output $Element
}

# Initialisierung, Bedingung, Wiederholung
for ($i=0; $i -lt 5; $i++) {
    Write-Output "Variable i ist momentan: $i"
    if ($i -gt 2){
        Write-Output "Variable i ist groesser als 2"
    }
}
