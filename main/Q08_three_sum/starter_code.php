<?php

include 'tests.php';

function three_sum($nums)
{
    // Silence is golden
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
