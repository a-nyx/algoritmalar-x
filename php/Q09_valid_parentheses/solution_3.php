<?php

include 'examples.php';

function check_parantheses($str)
{
    $pairs = [
        '(' => ')',
        '{' => '}',
        '[' => ']'
    ];

    // use input also as stack?
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

foreach ($examples as $example => $expected) {
    $actual = check_parantheses($example);

    echo "input: " . $example . PHP_EOL
        . "expected: " . ($expected ? 'valid' : 'not valid') . PHP_EOL
        . "actual: " . ($actual ? 'valid' : 'not valid') . PHP_EOL
        . '---------------' . PHP_EOL;
}
