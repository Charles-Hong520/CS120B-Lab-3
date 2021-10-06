echo ======================================================\n
echo Running all tests..."\n\n

test "PINA: 0 => PORTC: 0x40"
setPINA 0
continue 2
expectPORTC 0x40
checkResult

test "PINA: 1 => PORTC: 0x60"
setPINA 1
continue 2
expectPORTC 0x60
checkResult

test "PINA: 2 => PORTC: 0x60"
setPINA 2
continue 2
expectPORTC 0x60
checkResult

test "PINA: 3 => PORTC: 0x70"
setPINA 3
continue 2
expectPORTC 0x70
checkResult

test "PINA: 4 => PORTC: 0x70"
setPINA 4
continue 2
expectPORTC 0x70
checkResult

test "PINA: 5 => PORTC: 0x38"
setPINA 5
continue 2
expectPORTC 0x38
checkResult

test "PINA: 6 => PORTC: 0x38"
setPINA 6
continue 2
expectPORTC 0x38
checkResult

test "PINA: 7 => PORTC: 0x3C"
setPINA 7
continue 2
expectPORTC 0x3C
checkResult

test "PINA: 8 => PORTC: 0x3C"
setPINA 8
continue 2
expectPORTC 0x3C
checkResult

set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
