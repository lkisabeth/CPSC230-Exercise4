; this file won't run as-is. since the asignment was just writing out a conditional (not a full program), this is partially pseudo-code

.data
    x = 1
    y = 2
    z = 3

.text
main:
    ldr r1, =x
    ldr r2, =y
    ldr r3, =z
    cmp r1, r2      ; compare x > y
    bgt .L1         ; if x > y, check y > z
    b .L2           ; otherwise, skip ahead to check y < z
.L1:
    cmp r2, r3      ; compare y > z
    bgt .L4         ; if y > z, the if statement is satisfied and the block can be entered
    b .L2           ; otherwise, go to check y < z
.L2:
    cmp r2, r3      ; compare y < z
    blt .L3         ; if y < z, check y < x
    b .L5           ; otherwise, the if statement is NOT satisfied and the block cannot be entered
.L3:
    cmp r2, r1      ; compare y < x
    blt .L4         ; if y < x, the if statement is satisfied and the block can be entered
    b .L5           ; otherwise, the if statement is NOT satisfied and the block cannot be entered
.L4:
    ; the if statement is satisfied and the block can be entered
    ; do the thing within the if block
.L5:
    ; the if statement is NOT satisfied and the block cannot be entered
    ; skip the if block and do something else
