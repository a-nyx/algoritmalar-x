<?php

include 'tests.php';

function two_sum($nums, $target)
{
    for ($first = 0; $first < count($nums); $first++) {
        for ($second = $first + 1; $second < count($nums); $second++) {
            if ($nums[$first] + $nums[$second] == $target) {
                return [$first, $second];
            }
        }
    }
}

// Testing
foreach ($tests as $target => $nums) {
    echo "input: [" . implode(',', $nums) . "] & " . $target . PHP_EOL
        . "answer: [" . implode(',', two_sum($nums, $target)) . "]" . PHP_EOL
        . '---------------' . PHP_EOL;
}
