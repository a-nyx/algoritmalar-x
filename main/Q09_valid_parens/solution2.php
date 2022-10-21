<?php

include 'tests.php';

function check_parantheses($str)
{
    // while (str_contains($str, '()') || str_contains($str, '[]') || str_contains($str, '{}')) {
    //     $str = str_replace('()', '', $str);
    //     $str = str_replace('{}', '', $str);
    //     $str = str_replace('[]', '', $str);
    // }

    // return strlen($str) == 0;

    do {
        $str = str_replace(['()', '[]', '{}'], '', $str, $count);
    } while ($count);

    return empty($str);
}

// Testing
foreach ($tests as $example => $expected) {
    $actual = check_parantheses($example);

    echo "input: " . $example . PHP_EOL
        . "expected: " . ($expected ? 'valid' : 'not valid') . PHP_EOL
        . "actual: " . ($actual ? 'valid' : 'not valid') . PHP_EOL
        . '---------------' . PHP_EOL;
}
