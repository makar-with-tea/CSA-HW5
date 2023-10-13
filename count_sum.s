.text
# ������� ����� (� �������� t3)
count_sum:
	sum_loop:
		bltz t3 add_to_neg
		bgez t3 add_to_pos
		

	# ���������� ����� � ������������� �����
	add_to_neg:
		lw t5 (t0)
		bgez t5 add_wo_overflow # ��� ������ ������ ����� � �������� ������������ ����� �� ����������
		add t4 t3 t5
		bgez t4 overflow # ��� �������� ���� ������������� ����� ����� ������������� => ������������ 
		b add_wo_overflow
	

	# ���������� ����� � ������������� �����
	add_to_pos:
		lw t5 (t0)
		blez t5 add_wo_overflow # ��� ������ ������ ����� � �������� ������������ ����� �� ����������
		add t4 t5 t3
		blez t4 overflow  # ��� �������� ���� ������������� ����� ����� ������������� => ������������ 
		b add_wo_overflow

	# ���������� � ����� �����, �������������� �� ���������� ������������
	add_wo_overflow:
		lw t5 (t0)
		add t3 t3 t5
		addi t0 t0 4
		addi t2 t2 1
		blt t2 t1 sum_loop
		b sum_result
		

	# ����� �����	
	sum_result:
		print_str("Summ of array elements: ")
		print_int(t3)
		ret

	# ����� ���������� � ����������� �������� ����� ��� ������������
	overflow:
		print_str("Error: overflow!\nLast correct summ: ")
		print_int(t3)
		print_str( "\nNumber of summed elements: ")
		print_int(t2)
		ret