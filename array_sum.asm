.data
.align 2
array:  .word 10   # ������ ��� �������� ���������

.text
la t0 array   # ����� �������
li s3 10 # max ����� �������

# ���� ������������� ����� �������
jal get_length

# ���������� ������� �������������
jal fill_array

li t2 0
la t0 array
jal count_sum # ������� ����� � ����� ����������
li a7 10 # �������
ecall

.include "macroses.s"
.include "get_length.s"
.include "count_sum.s"
.include "fill_array.s"