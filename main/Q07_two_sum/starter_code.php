<?php

include 'tests.php';

function two_sum($nums, $target)
{
    // Silence is golden
}

// Testing
foreach ($tests as $target => $nums) {
    echo "input: [" . implode(',', $nums) . "] & " . $target . PHP_EOL
        . "answer: [" . implode(',', two_sum($nums, $target)) . "]" . PHP_EOL
        . '---------------' . PHP_EOL;
}
