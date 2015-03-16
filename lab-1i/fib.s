  .syntax unified
  .arch armv7-a
  .text
  .align 2
  .thumb
  .thumb_func

  .global fibonacci
  .type fibonacci, function

fibonacci:
  @ ADD/MODIFY CODE BELOW
  @ PROLOG
  push {r3, r4, r5, r6, lr}

  @passed value
  mov r3, r0
  @previous = -1
  mov r4, #0xFFFFFFFF
  @result = 1
  mov r0, #1
  @sum = 0
  mov r5, #0
  @i = 0
  mov r6, #0

.LOOP:
  cmps r6, r3
  bgt .FINISH
  @sum = result + previous
  add r5, r0, r4
  @previous = result
  mov r4, r0
  @result = sum
  mov r0, r5
  add r6, r6, #1
  bl .LOOP
.FINISH:
  @EPILOG
  pop {r3, r4, r5, r6, pc}



  .size fibonacci, .-fibonacci
  .end
