<?php

$tests_one_type = [
    '()' => true,
    '((()))()' => true,
    '(()())' => true,
    ')()' => false,
    '())' => false,
    '()()()' => true
];

$tests = [
    '()[]{}' => true,
    '[{()}]' => true,
    '[[{}][()]]' => true,
    '[]}' => false,
    '()[({])}[]' => false
];
