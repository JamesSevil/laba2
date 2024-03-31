def romanToInt(s):
    romanNums = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
    result = romanNums[s[-1]]  # получаем числовое значение для последнего символа
    for i in range(len(s) - 2, -1, -1):
        if romanNums[s[i]] < romanNums[s[i + 1]]:
            result -= romanNums[s[i]]  # если меньшая цифра стоит перед большей, вычитаем
        else:
            result += romanNums[s[i]]  # в противном случае, складываем
    return result

input = "XII"
print("Число:", romanToInt(input))