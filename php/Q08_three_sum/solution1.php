<?php

include 'tests.php';

function three_sum($nums)
{
    $answers = [];
    sort($nums);
    for ($x = 0; $x < count($nums); $x++) {
        if ($x > 0 && $nums[$x] == $nums[$x - 1]) {
            continue;
        }
        for ($y = $x + 1; $y < count($nums); $y++) {
            if ($y > $x + 1 && $nums[$y] == $nums[$y - 1]) {
                continue;
            }
            for ($z = $y + 1; $z < count($nums); $z++) {
                if ($nums[$x] + $nums[$y] + $nums[$z] == 0) {
                    $answers[] = [$nums[$x], $nums[$y], $nums[$z]];
                    break;
                }
            }
        }
    }
    return $answers;
}

function three_sum_2($nums)
{
    $answers = [];
    for ($x = 0; $x < count($nums); $x++) {
        for ($y = $x + 1; $y < count($nums); $y++) {
            for ($z = $y + 1; $z < count($nums); $z++) {
                if ($nums[$x] + $nums[$y] + $nums[$z] == 0) {
                    $answer = [$nums[$x], $nums[$y], $nums[$z]];
                    sort($answer);
                    $answers[] = $answer;
                }
            }
        }
    }

    for ($i = 0; $i < count($answers); $i++) {
        for ($k = $i + 1; $k < count($answers); $k++) {
            if ($answers[$i] == $answers[$k]) {
                array_splice($answers, $k, 1);
                $k--;
            }
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
