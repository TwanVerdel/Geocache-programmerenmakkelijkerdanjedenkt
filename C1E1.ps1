$x = 0 # x-coördinaat van de auto
$y = 0 # y-coördinaat van de auto
$dx = 0 # verplaatsing in x-richting
$dy = 0 # verplaatsing in y-richting

while ($true) {
    $command = Read-Host -Prompt "Voer een commando in" # vraag om invoer van gebruiker
    if ($command -eq ".") { # niks doen
        $dx = $dx
        $dy = $dy
    }
    elseif ($command -eq ">") { # naar rechts
        $dx = 1
        $dy = 0
    }
    elseif ($command -eq "^") { # omhoog
        $dx = 0
        $dy = -1
    }
    elseif ($command -eq "v") { # omlaag
        $dx = 0
        $dy = 1
    }
    elseif ($command -eq "<") { # naar links
        $dx = -1
        $dy = 0
    }
    else {
        Write-Host "Ongeldig commando" # foutmelding bij ongeldige invoer
        continue
    }

    # bereken nieuwe positie van de auto
    $x += $dx
    $y += $dy

    # print nieuwe positie van de auto
    Write-Host "Auto op positie ($x,$y)"
}
