def sum_of_digits(num): # нахождение суммы цифр числа
    sum = 0
    while num != 0:
        sum += num % 10
        num //= 10
    return sum

nums = [19, 93, 44, 27]  # ввод чисел
for num in nums:  # перебор каждого числа
    if sum_of_digits(num) < 10:  # проверка условия
        print(num)  # вывод подходящих чисел