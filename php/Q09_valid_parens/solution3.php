<?php

include 'tests.php';

function check_parantheses($str)
{
    $pairs = [
        '(' => ')',
        '{' => '}',
        '[' => ']'
    ];

    $stack = [];
    for ($i = 0; $i < strlen($str); $i++) {
        if (isset($pairs[$str[$i]])) {
            $stack[] = $pairs[$str[$i]];
        } else if ($str[$i] != array_pop($stack)) {
            return false;
        }
    }
    return empty($stack);
}

// Testing
foreach ($tests as $test => $expected) {
    $actual = check_parantheses($test);

    echo "input: " . $test . PHP_EOL
        . "expected: " . ($expected ? 'valid' : 'not valid') . PHP_EOL
        . "actual: " . ($actual ? 'valid' : 'not valid') . PHP_EOL
        . '---------------' . PHP_EOL;
}
