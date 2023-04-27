$x = 0 # x-coördinaat van de auto
$y = 0 # y-coördinaat van de auto
$dx = 0 # verplaatsing in x-richting
$dy = 0 # verplaatsing in y-richting
$vx = 0 #versnelling in x-richting
$vy = 0 #versnelling in y richting


while ($true) {
    $commands = Read-Host -Prompt "Voer meerdere commando's in, gescheiden door een spatie" # vraag om invoer van gebruiker
    $commandArray = $commands.Split(" ") # splits de invoer op in een array van commando's
    
    foreach ($command in $commandArray) {
        # loop door de array van commando's
        if ($command -eq ".") {
            # niks doen
            $dx = $dx
            $dy = $dy
            $vx = $vx
            $vy = $vy
            Write-Host "versnelling X is $vx"
            Write-Host "versnelling Y is $vy"
        }
        elseif ($command -eq ">") {
            # naar rechts
            $dx = 1
            $vx = $vx + $dx
            $vy = $vy
            Write-Host "versnelling X is $vx"
            Write-Host "versnelling Y is $vy"
        }
        elseif ($command -eq "^") {
            # omhoog
            $dy = 1
            $vx = $vx
            $vy = $vy + $dy
            Write-Host "versnelling X is $vx"
            Write-Host "versnelling Y is $vy"
        }
        elseif ($command -eq "v") {
            # omlaag
            $dy = -1
            $vx = $vx
            $vy = $vy + $dy
            Write-Host "versnelling X is $vx"
            Write-Host "versnelling Y is $vy"
        }
        elseif ($command -eq "<") {
            # naar links
            $dx = -1
            $vx = $vx + $dx
            $vy = $vy
            Write-Host "versnelling X is $vx"
            Write-Host "versnelling Y is $vy"
        }
        else {
            Write-Host "Ongeldig commando" # foutmelding bij ongeldige invoer
            continue
        }

        # bereken nieuwe positie van de auto
        $x += $vx
        $y += $vy

        # print nieuwe positie van de auto
        Write-Host "Auto op positie ($x,$y)"
    }
}
