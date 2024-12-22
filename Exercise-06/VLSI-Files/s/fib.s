# a: x5
# b: x6
# c: x7
# i: x2
# N: x3
.init
	addi x5, x0, 1
	addi x6, x0, 1
	addi x2, x0, 0
	addi x3, x0, 42
	addi x3, x3, -1
.loop
	beq x2, x3, 24
	add x7, x5, x6
	add x6, x5, x0
	add x5, x7, x0
	addi x2, x2, -1
	jal x0, -20
.exit
	sw x5, x0, 44
