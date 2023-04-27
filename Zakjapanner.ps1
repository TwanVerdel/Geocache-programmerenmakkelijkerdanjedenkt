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
    for ($i = 1; $i -le $n; $i++) {
        $digits = [string]$i -split ''
        $count = 0
        foreach ($digit in $digits) {
            switch ($digit) {
                1 { $count += $one }
                2 { $count += $two }
                3 { $count += $three }
                4 { $count += $four }
                5 { $count += $five }
                6 { $count += $six }
                7 { $count += $seven }
                8 { $count += $eight }
                9 { $count += $nine }
                0 { $count += $zero}
            }
        } if ($count -ge 15){
            Write-Host "$i = $count"
        }
    }
}

TelStreepjes 1000
