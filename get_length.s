.text
# ���� ������������� ����� �������
get_length:
	# ����� ��������� � �������� �����
	print_str("Input array length (from 1 to 10).\n")
	read_int(t1)
	# ���� ��������� ����� �� ����� � ���������� �� 1 �� 10, ���� �����������
	blez t1 get_length
	bgt t1 s3 get_length
	# ����� ��������� � �������� ���������
	print_str("Now input array members.\n")
	ret