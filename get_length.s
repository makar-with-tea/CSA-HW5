.text
# Ввод пользователем длины массива
get_length:
	# Вывод подсказки о введении длины
	print_str("Input array length (from 1 to 10).\n")
	read_int(t1)
	# Если введенное число не лежит в промежутке от 1 до 10, ввод повторяется
	blez t1 get_length
	bgt t1 s3 get_length
	# Вывод подсказки о введении элементов
	print_str("Now input array members.\n")
	ret