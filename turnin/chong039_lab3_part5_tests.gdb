echo ======================================================\n
echo Running all tests..."\n\n

test "PINB: 0, PIND: 35 => PORTB: 2"
setPINB 0
setPIND 35
continue 2
expectPORTB 2
checkResult

test "PINB: 0, PIND: 34 => PORTB: 4"
setPINB 0
setPIND 34
continue 2
expectPORTB 4
checkResult

test "PINB: 1, PIND: 34 => PORTB: 4"
setPINB 1
setPIND 34
continue 2
expectPORTB 4
checkResult

test "PINB: 1, PIND: 35 => PORTB: 2"
setPINB 1
setPIND 35
continue 2
expectPORTB 2
checkResult

test "PINB: 1, PIND: 2 => PORTB: 0"
setPINB 1
setPIND 2
continue 2
expectPORTB 0
checkResult

test "PINB: 0, PIND: 3 => PORTB: 4"
setPINB 0
setPIND 3
continue 2
expectPORTB 4
checkResult

test "PINB: 0, PIND: 0 => PORTB: 0"
setPINB 0
setPIND 0
continue 2
expectPORTB 0
checkResult

test "PINB: 1, PIND: 0 => PORTB: 0"
setPINB 1
setPIND 0
continue 2
expectPORTB 0
checkResult

test "PINB: 0, PIND: 2 => PORTB: 0"
setPINB 0
setPIND 2
continue 2
expectPORTB 0
checkResult

test "PINB: 1, PIND: 255 => PORTB: 2"
setPINB 1
setPIND 255
continue 2
expectPORTB 2
checkResult

set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
