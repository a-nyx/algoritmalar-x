<?php

include 'tests.php';

function check_parantheses($str)
{
    if (strlen($str) % 2 != 0) return false;

    $open = 0;
    for ($i = 0; $i < strlen($str); $i++) {
        // if ($str[$i] == '(') {
        //     $open++;
        // } else {
        //     $open--;
        // }
        $open += $str[$i] == '(' ? 1 : -1;
        if ($open < 0) return false;
    }
    return $open == 0;
}

// Testing
foreach ($tests_one_type as $example => $expected) {
    $actual = check_parantheses($example);

    echo "input: " . $example . PHP_EOL
        . "expected: " . ($expected ? 'valid' : 'not valid') . PHP_EOL
        . "actual: " . ($actual ? 'valid' : 'not valid') . PHP_EOL
        . '---------------' . PHP_EOL;
}
