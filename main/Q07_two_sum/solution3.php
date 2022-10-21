<?php

include 'tests.php';

function two_sum($nums, $target)
{
    $number_positions = [];

    foreach ($nums as $index => $number) {
        $diff = $target - $number;
        if (isset($number_positions[$diff])) {
            return [$number_positions[$diff], $index];
        }
        $number_positions[$number] = $index;
    }
}

// Testing
foreach ($tests as $target => $nums) {
    echo "input: [" . implode(',', $nums) . "] & " . $target . PHP_EOL
        . "answer: [" . implode(',', two_sum($nums, $target)) . "]" . PHP_EOL
        . '---------------' . PHP_EOL;
}
