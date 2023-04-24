$one = 2
$two = 5
$three = 5
$four = 4
$five = 5
$six = 6
$seven = 3
$eight = 7
$nine = 6
$zero = 6

function TelStreepjes($n) {
    $streepjes = @($zero, $one, $two, $three, $four, $five, $six, $seven, $eight, $nine)
    $count = 0
    for ($i = 1; $i -le $n; $i++) {
        $digits = [string]$i -split ''
        foreach ($digit in $digits) {
            $count += $streepjes[$digit]
        }
        if ($count -ge 15) {
            Write-Host "Gevonden: $i ($count streepjes)"
        }
        $count = 0
    }
}

TelStreepjes 1000
