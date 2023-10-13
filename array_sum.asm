.data
.align 2
array:  .word 10   # массив для хранения элементов

.text
la t0 array   # адрес массива
li s3 10 # max длина массива

# Ввод пользователем длины массива
jal get_length

# Заполнение массива пользователем
jal fill_array

li t2 0
la t0 array
jal count_sum # Подсчет суммы и вывод результата
li a7 10 # Останов
ecall

.include "macroses.s"
.include "get_length.s"
.include "count_sum.s"
.include "fill_array.s"