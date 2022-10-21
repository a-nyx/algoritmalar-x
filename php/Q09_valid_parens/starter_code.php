<?php

include 'tests.php';

function check_parantheses($str)
{
    // Silence is golden
}

// Testing
foreach ($tests_one_type as $example => $expected) {
    $actual = check_parantheses($example);

    echo "input: " . $example . PHP_EOL
        . "expected: " . ($expected ? 'valid' : 'not valid') . PHP_EOL
        . "actual: " . ($actual ? 'valid' : 'not valid') . PHP_EOL
        . '---------------' . PHP_EOL;
}
