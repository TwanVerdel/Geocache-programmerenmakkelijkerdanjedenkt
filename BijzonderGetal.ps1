# Functie om te controleren of een getal priem is
function Is-Prime($number) {
    if ($number -le 1) { return $false } # 1 en kleinere getallen zijn geen priemgetallen
    if ($number -eq 2) { return $true } # 2 is het enige even priemgetal
    if ($number % 2 -eq 0) { return $false } # Andere even getallen zijn geen priemgetallen
    for ($i = 3; $i -le [math]::Sqrt($number); $i += 2) {
        if ($number % $i -eq 0) { return $false } # Controleer of het getal deelbaar is door oneven getallen
    }
    return $true
}

# Begin met het controleren vanaf 1
$number = 1

while ($true) {
    $number_str = $number.ToString()
    $found = $false

    # Loop door elk cijfer in het getal
    for ($i = 0; $i -lt $number_str.Length; $i++) {

        # Loop door elk cijfer van 0 tot 9, behalve het huidige cijfer
        for ($j = 0; $j -lt 10; $j++) {
            if ($j -eq [int]$number_str[$i]) { continue } # Sla het huidige cijfer over

            # Maak een nieuw getal door het huidige cijfer te wijzigen in het nieuwe cijfer
            $new_number_str = $number_str.Substring(0, $i) + $j.ToString() + $number_str.Substring($i + 1)
            $new_number = [int]$new_number_str

            # Controleer of het nieuwe getal geen priemgetal is
            if (!(Is-Prime $new_number)) {
                $found = $true
                break
            }
        }
        if ($found) { break }
    }

    # Als er geen getal is gevonden dat kan worden gewijzigd in een niet-prime getal,
    # dan is het huidige getal het gezochte getal
    if ($found -eq $false) {
        $result = $number * 2
        Write-Host "Het eerste getal dat niet gewijzigd kan worden in een niet-prime getal is $($result)."
        break
    }

    # Ga door naar het volgende getal
    $number++
}
