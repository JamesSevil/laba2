using System;

class Program {
    static int RomanToInt(string s) {
        Dictionary<char, int> romanNums = new Dictionary<char, int> {
            {'I', 1}, {'V', 5}, {'X', 10}, {'L', 50}, {'C', 100}, {'D', 500}, {'M', 1000}
        };

        int result = romanNums[s[^1]]; // Получаем численное значение для последнего символа

        for (int i = s.Length - 2; i >= 0; i--) {
            if (romanNums[s[i]] < romanNums[s[i + 1]]) {
                result -= romanNums[s[i]]; // Если меньшая цифра перед большей, вычитаем ее значение
            } else {
                result += romanNums[s[i]]; // Иначе складываем значения
            }
        }

        return result;
    }

    static void Main() {
        string input = "XII";
        Console.WriteLine("Число: " + RomanToInt(input));
    }
}