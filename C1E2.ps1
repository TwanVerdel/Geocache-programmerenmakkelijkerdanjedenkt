$woord = Read-Host "Voer een woord in"

$letters = $woord.ToCharArray() | Group-Object -NoElement

$waarde = 0

foreach ($letter in $letters) {
    $aantal = $letter.Count
    $karakter = $letter.Name
    $isHoofdletter = $karakter -cmatch '[A-Z]'
    $isKleineLetter = $karakter -cmatch '[a-z]'
    
    if ($aantal -eq 1) {
        if ($isHoofdletter) {
            $waarde -= [int][char]::ToLower($karakter) - 96
        }
        elseif ($isKleineLetter) {
            $waarde += [int][char]::ToLower($karakter) - 96
        }
    }
    else {
        $maxAantal = ($letters | Measure-Object Count -Maximum).Maximum
        $maxLetters = $letters | Where-Object Count -eq $maxAantal | Select-Object -ExpandProperty Name
        
        if ($maxLetters -contains [char]::ToLower($karakter)) {
            if ($isHoofdletter) {
                $waarde -= $aantal
            }
            elseif ($isKleineLetter) {
                $waarde += $aantal
            }
        }
        else {
            $waarde = 0
            break
        }
    }
}

Write-Host "De waarde van het woord '$woord' is $waarde"