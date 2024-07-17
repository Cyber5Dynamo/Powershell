#Übung 2: Multiplikationstabelle Ziel: Schreiben Sie ein PowerShell-Skript, das eine Multiplikationstabelle 
#für die Zahlen 1 bis 10 generiert und druckt. Jede Zeile sollte einen einzelnen Multiplikationsfaktor im 
#Format „X * Y = Z“ anzeigen, wobei X die Zahl von 1 ist bis 10, Y ist ein Multiplikator, der ebenfalls 
#von 1 bis 10 reicht, und Z ist das Ergebnis der Multiplikation.

#Hinweise:

#Verwenden Sie eine verschachtelte for-Schleife: die äußere Schleife für den ersten Multiplikator (X) 
#im Bereich von 1 bis 10 und die innere Schleife für den zweiten Multiplikator (Y) ebenfalls im Bereich 
#von 1 bis 10. Berechnen Sie innerhalb der inneren Schleife das Produkt (Z ) und drucken Sie das Ergebnis 
#im angegebenen Format aus. Diese Übung stärkt nicht nur das Verständnis von for-Schleifen, sondern 
#demonstriert auch deren Leistungsfähigkeit bei der Generierung komplexer Ausgaben aus einfachen Codestrukturen.


# Äußere Schleife für den ersten Multiplikator (X)
for ($x = 1; $x -le 10; $x++) {
    # Innere Schleife für den zweiten Multiplikator (Y)
    for ($y = 1; $y -le 10; $y++) {
        # Berechnung des Produkts (Z)
        $z = $x * $y
        # Ausgabe im angegebenen Format
        Write-Output "$x * $y = $z"
    }
}
