<?php

include 'tests.php';

function two_sum($nums, $target)
{
    $sorted = $nums;
    sort($sorted);

    $left = 0;
    $right = count($sorted) - 1;
    $answer_numbers = [];

    while ($left < $right) {
        $sum = $sorted[$left] + $sorted[$right];

        if ($sum == $target) {
            $answer_numbers = [$sorted[$left], $sorted[$right]];
            break;
        } else if ($sum < $target) {
            $left++;
        } else {
            $right--;
        }
    }

    $first_index = array_search($answer_numbers[0], $nums);
    $same = $answer_numbers[0] == $answer_numbers[1];
    $second_index = array_keys($nums, $answer_numbers[1])[$same ? 1 : 0];

    return [$first_index, $second_index];
}

// Testing
foreach ($tests as $target => $nums) {
    echo "input: [" . implode(',', $nums) . "] & " . $target . PHP_EOL
        . "answer: [" . implode(',', two_sum($nums, $target)) . "]" . PHP_EOL
        . '---------------' . PHP_EOL;
}
