using System;

class Program {
    static int SumOfDigits(int num) { // нахождение суммы чисел
        int sum = 0;
        while (num != 0) {
            sum += num % 10;
            num /= 10;
        }
        return sum;
    }

    static void Main() {
        // ввод чисел
        int n;
        do {
            Console.Write("Введите кол-во чисел(Больше 0): ");
        } while (!int.TryParse(Console.ReadLine(), out n) || n <= 0);
        List<double> nums = new List<double>(n);
        Console.Write("Введите числа: ");
        for (int i = 0; i < n; ++i) {
            nums.Add(double.Parse(Console.ReadLine()));
        }

        Console.Write("Числа: ");
        foreach (var num in nums) { // перебор каждого числа
            if (SumOfDigits((int)num) < 10) { // проверка условия
                Console.Write(num + " "); // вывод подходящих чисел
            }
        }
    }
}