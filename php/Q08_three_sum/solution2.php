<?php

include 'tests.php';

function three_sum($nums)
{
    sort($nums);
    if (count($nums) < 3 || $nums[0] > 0 || $nums[count($nums) - 1] < 0) {
        return [];
    }
    if (count($nums) == 3 && array_sum($nums) == 0) {
        return [$nums];
    }

    $answers = [];
    for ($i = 0; $i < count($nums); $i++) {
        if ($i > 0 && $nums[$i] == $nums[$i - 1]) {
            continue;
        }

        $number_positions = [];

        for ($k = $i + 1; $k < count($nums); $k++) {
            $last = 0 - $nums[$i] - $nums[$k];
            if (isset($number_positions[$last])) {
                $answers[] = [$nums[$i], $nums[$k], $last];
                while ($k < count($nums) - 1 && $nums[$k] == $nums[$k + 1]) {
                    $k++;
                }
            }
            $number_positions[$nums[$k]] = $k;
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
