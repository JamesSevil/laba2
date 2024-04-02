def sum_of_digits(num):
    # нахождение суммы цифр числа
    sum = 0
    while num != 0:
        sum += num % 10
        num //= 10
    return sum

# ввод чисел
n = 0
while n <= 0:
    n = int(input("Введите кол-во чисел(Больше 0): "))
    
nums = []
print("Введите числа:")
for i in range(n):
    nums.append(float(input()))
    
print("Числа:")
for num in nums:
    if sum_of_digits(num) < 10:
        print(num, end=" ")