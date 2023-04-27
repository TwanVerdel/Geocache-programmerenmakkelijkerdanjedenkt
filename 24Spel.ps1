# Lijsten met getallen en operators
$numbers = 1,2,3,4,5,6,7,8,9
$operators = "+","-","*","/"

# Functie om alle mogelijke combinaties van een lijst te genereren
function Get-Combinations($items, $length) {
    if ($length -eq 1) {
        return $items | ForEach-Object { ,$_ }
    }
    $result = @()
    foreach ($item in $items) {
        $subitems = $items | Where-Object { $_ -ne $item }
        foreach ($subitem in (Get-Combinations $subitems ($length - 1))) {
            $result += ,($item + $subitem)
        }
    }
    return $result
}

# Loop over alle combinaties en controleer of de waarde 24 is
foreach ($number_combination in (Get-Combinations $numbers 4)) {
    foreach ($operator_combination in (Get-Combinations $operators 3)) {
        $expression = "$($number_combination[0]) $($operator_combination[0]) $($number_combination[1]) $($operator_combination[1]) $($number_combination[2]) $($operator_combination[2]) $($number_combination[3])"
        $value = Invoke-Expression $expression
        if ($value -eq 24) {
            Write-Output $expression
        }
    }
}
