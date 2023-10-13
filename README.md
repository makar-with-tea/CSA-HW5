# CSA-HW5, Макаревич Мария, БПИ228
Работа выполнена на оценку 8.
## Условие
Написать программу, осуществляющую суммирование целочисленных элементов одномерного массива. Количество элементов в массиве может варьироваться от 1 до 10. Сами элементы вводятся с клавиатуры. Значение суммы также выводится в консоль эмулятора RARS. Необходимо контролировать, чтобы число вводимых элементов не превышало максимально допустимое. В случае, когда возникает переполнение, необходимо вывести последнее корректное значение суммы и число просуммированных при этом элементов. Суммирование осуществлять после размещения массива в памяти.
При выполнении задания для ввода и вывода массивов, вычисления суммы использовать подпрограммы, размещенные в отдельных файлах общего каталога. Для ввода и вывода отдельных элементов массива использовать макроопределения из библиотеки, рассмотренной на семинарах.
## Описание работы программы
Программа запрашивает у пользователя длину массива. Ввод повторяется, пока не будет введена корректная длина:
![image](https://github.com/makar-with-tea/CSA-HW5/assets/79705001/be6c7312-bc36-447b-b863-f173d116c5cc)

Затем программа считывает элементы массива. После она считает сумму элементов. При переполнении подсчет прекращается, выводится промежуточный результат и программа завершается:
![image](https://github.com/makar-with-tea/CSA-HW5/assets/79705001/c4a414ae-24cf-4a57-8182-b083a8155997)

Иначе она выводит сумму элементов массива:
![image](https://github.com/makar-with-tea/CSA-HW5/assets/79705001/15ad49fe-8dc8-46e6-a271-48ccb13cc3bc)

## Подпрограммы и макросы
Ввод длины массива, заполнение массива и подсчет суммы элементов массива реализованы подпрограммами get_length, fill_array и count_sum соответственно. Ввод и вывод целого числа, вывод строки и ввод элемента массива реализованы как макросы. Все подпрограммы, а также библиотека макросов, находятся в отдельных файлах:
![image](https://github.com/makar-with-tea/CSA-HW5/assets/79705001/bf1ad57b-02dc-4fda-909d-41fd6d129497)

Они подключены к основной программе с помощью команды ".include":
![image](https://github.com/makar-with-tea/CSA-HW5/assets/79705001/2927d8ae-b9cc-4cc9-b4d3-31bb5fd9be6c)
## Примеры работы программы на различных тестовых данных
Корректный ввод длины массива, подсчет суммы без переполнения:
![image](https://github.com/makar-with-tea/CSA-HW5/assets/79705001/648a2a8d-5f31-4ada-818e-6f389994eee4)

Некорректный ввод длины массива, подсчет суммы с переполнением:
![image](https://github.com/makar-with-tea/CSA-HW5/assets/79705001/1f034e5d-2f66-4a77-aae4-f9434dfea6db)
