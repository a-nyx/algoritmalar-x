<?php

include 'tests.php';

function three_sum($nums)
{
    sort($nums);
    $answers = [];

    for ($i = 0; $i < count($nums) - 2; $i++) {
        if ($i > 0 && $nums[$i] == $nums[$i - 1]) {
            continue;
        }

        $left = $i + 1;
        $right = count($nums) - 1;
        while ($left < $right) {
            $total = $nums[$i] + $nums[$left] + $nums[$right];
            if ($total == 0) {
                $answers[] = [$nums[$i], $nums[$left], $nums[$right]];
                $left++;
                $right--;
                while ($left < $right && $nums[$left] == $nums[$left - 1]) {
                    $left++;
                }
            } else if ($total < 0) {
                $left++;
            } else {
                $right--;
            }
        }

        if ($nums[$i] >= 0) {
            break;
        }
    }

    return $answers;
}

// Testing
foreach ($tests as $test) {
    $results = three_sum($test);
    $answers = "";
    foreach ($results as $answer) {
        $answers .= PHP_EOL . implode(",", $answer);
    }
    $output = "input: [" . implode(',', $test) . "]" . PHP_EOL
        . "answers: " . $answers . PHP_EOL
        . '---------------' . PHP_EOL;
    echo $output;
}
