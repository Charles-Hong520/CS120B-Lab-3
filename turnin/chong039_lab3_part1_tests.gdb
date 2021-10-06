echo ======================================================\n
echo Running all tests..."\n\n

test "PINA: 0x00, PINB: 0x00 => PORTC: 0x00"
setPINA 0x00
setPINB 0x00
continue 2
expectPORTC 0x00
checkResult

test "PINA: 0x00, PINB: 0x01 => PORTC: 0x01"
setPINA 0x00
setPINB 0x01
continue 2
expectPORTC 0x01
checkResult

test "PINA: 0x01, PINB: 0x00 => PORTC: 0x01"
setPINA 0x01
setPINB 0x00
continue 2
expectPORTC 0x01
checkResult

test "PINA: 0x02, PINB: 0x01 => PORTC: 0x02"
setPINA 0x02
setPINB 0x01
continue 2
expectPORTC 0x02
checkResult

test "PINA: 0x03, PINB: 0x04 => PORTC: 0x03"
setPINA 0x03
setPINB 0x04
continue 2
expectPORTC 0x03
checkResult

test "PINA: 0xF0, PINB: 0xF0 => PORTC: 0x08"
setPINA 0xF0
setPINB 0xF0
continue 2
expectPORTC 0x08
checkResult

test "PINA: 0xF1, PINB: 0x0F => PORTC: 0x09"
setPINA 0xF1
setPINB 0x0F
continue 2
expectPORTC 0x09
checkResult

test "PINA: 0xFF, PINB: 0xFF => PORTC: 0x10"
setPINA 0xFF
setPINB 0xFF
continue 2
expectPORTC 0x10
checkResult

test "PINA: 0xFE, PINB: 0xF0 => PORTC: 0x0B"
setPINA 0xFE
setPINB 0xF0
continue 2
expectPORTC 0x0B
checkResult

set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
