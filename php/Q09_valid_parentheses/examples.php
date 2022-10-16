<?php

$examples_one_type = [
    '()' => true,
    '((()))()' => true,
    '(()())' => true,
    ')()' => false,
    '())' => false,
    '()()()' => true
];

$examples = [
    '()[]{}' => true,
    '[{()}]' => true,
    '[[{}][()]]' => true,
    '[]}' => false,
    '()[({])}[]' => false
];
