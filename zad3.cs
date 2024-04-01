using System;

class Program {
    static int Sum_of_digits(int num) { // нахождение суммы цифр числа
        int sum = 0;
        while (num != 0)
        {
            sum += num % 10;
            num /= 10;
        }
        return sum;
    }

    static void Main() {
        List<int> nums = [19, 93, 44, 27]; // ввод чисел
        
        Console.Write("Числа: ");
        foreach (int num in nums) { // перебор каждого числа
            if (Sum_of_digits(num) < 10) { // проверка условия
                Console.Write(num + " "); // вывод подходящих чисел
            }
        }
    }
}