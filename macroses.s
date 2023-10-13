.macro read_int(%x)
	li a7 5
	ecall
	mv %x a0
.end_macro 

.macro print_int(%x)
	li a7 1
	mv a0 %x
	ecall
.end_macro 

.macro input_array_elem (%adress, %ind)
	li a7 5
	ecall
	sw a0(%adress)
	addi %ind %ind 1
	addi %adress %adress 4
.end_macro

.macro print_str (%x)
	.data
	str: .asciz %x
	.text
	li a7, 4
	la a0, str
	ecall
.end_macro

