#Übung 1: Gerade oder ungerade Ziel: Schreiben Sie ein PowerShell-Skript, das eine Zahl als Eingabe verwendet und prüft, 
#ob die Zahl gerade oder ungerade ist. Wenn die Zahl gerade ist, sollte „Die Zahl ist gerade“ gedruckt werden. 
#Andernfalls sollte „Die Zahl ist ungerade“ ausgegeben werden.

#Hinweise:

#Verwenden Sie das Cmdlet Read-Host, um Benutzereingaben entgegenzunehmen. Verwenden Sie eine if/else-Anweisung, 
##m zu prüfen, ob die Zahl durch 2 teilbar ist.



# Hier gibt man einen Wert ein

$zahl = Read-Host "Geben Sie eine Zahl ein:"

# Jetzt wird überprüft ob die Werte passen
if ($zahl % 2 -eq 0) {
    Write-Host "Die Zahl ist gerade"
} else {
    Write-Host "Die Zahl ist ungerade"
}



