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
	push {r2, r3, r4, r5, lr}
	
	@ R2 => previous
	@ R3 => result
	@ R4 => sum
	@ R5 => i
	mov r2, #-1
    	mov r3, #1
	mov r4, #0
    	mov r5, #0
    	
.FOR:
	adds r4, r3, r2
	mov  r2, r3
	mov  r3, r4
	@ i++
	adds r5, r5, #1
	@ i<=x
	cmp  r5, r0
	ble  .FOR
	
	@ return result
	mov r0, r3
	pop {r2, r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION
.L3:
	mov r0, #0			@ R0 = 0
	pop {r2, r3, r4, r5, pc}		@ EPILOG

.L4:
	mov r0, #1			@ R0 = 1
	pop {r2, r3, r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end
