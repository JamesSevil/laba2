using System.Text.RegularExpressions;

class Program
{
    static void Main() {
        string str = "1001tf11flb10001"; // строка
        Regex regular = new Regex("1(0+)1"); // условие поиска
        MatchCollection result = regular.Matches(str); // результат

        foreach (Match match in result) {
            Console.WriteLine(match.Value); // возвращает совпадение с регулярным выражением
        }
    }
}