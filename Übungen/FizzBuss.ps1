#Übung 3: FizzBuzz Ziel: Implementieren Sie das klassische FizzBuzz-Programm in PowerShell. Für die Zahlen 1 bis 100:

#Drucken Sie „Fizz“ für durch 3 teilbare Zahlen. Drucken Sie „Buzz“ für durch 5 teilbare Zahlen. Drucken Sie „FizzBuzz“ 
#für durch 3 und 5 teilbare Zahlen. Drucken Sie die Zahl selbst für alle anderen Zahlen. Hinweise:

#Verwenden Sie eine for-Schleife, um die Zahlen 1 bis 100 zu durchlaufen. Verwenden Sie innerhalb der Schleife 
#eine if/else-Struktur, um die Teilbarkeit durch 3, 5 oder beides zu überprüfen, und drucken Sie die entsprechende 
#Ausgabe aus. Diese Übungen sind interaktiver gestaltet und bieten eine praktische Anwendung von for-Schleifen 
#und if/else-Anweisungen, was hoffentlich zu einem besseren Lernerlebnis führt.


for ($i = 1; $i -lt 100; $i++) {
    if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
        Write-Output "FizzBuzz"
    }
    elseif ($i % 3 -eq 0) {
        Write-Output "Fizz"
    }
    elseif ($i % 5 -eq 0) {
        Write-Output "Buzz"
    }
    else {
        Write-Output $i
    }
}