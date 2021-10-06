echo ======================================================\n
echo Running all tests..."\n\n

test "PINA: 0x00 => PORTB: 0x00, PORTC: 0x00"
setPINA 0x00
continue 2
expectPORTB 0x00
expectPORTC 0x00
checkResult

test "PINA: 0x01 => PORTB: 0x00, PORTC: 0x10"
setPINA 0x01
continue 2
expectPORTB 0x00
expectPORTC 0x10
checkResult

test "PINA: 0x21 => PORTB: 0x02, PORTC: 0x10"
setPINA 0x21
continue 2
expectPORTB 0x02
expectPORTC 0x10
checkResult

test "PINA: 0x56 => PORTB: 0x05, PORTC: 0x60"
setPINA 0x56
continue 2
expectPORTB 0x05
expectPORTC 0x60
checkResult

test "PINA: 0xAA => PORTB: 0x0A, PORTC: 0xA0"
setPINA 0xAA
continue 2
expectPORTB 0x0A
expectPORTC 0xA0
checkResult

test "PINA: 0xF0 => PORTB: 0x0F, PORTC: 0x00"
setPINA 0xF0
continue 2
expectPORTB 0x0F
expectPORTC 0x00
checkResult

test "PINA: 0x3C => PORTB: 0x03, PORTC: 0xC0"
setPINA 0x3C
continue 2
expectPORTB 0x03
expectPORTC 0xC0
checkResult

set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
