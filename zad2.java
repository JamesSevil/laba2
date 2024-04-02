import java.util.HashMap;
import java.util.Map;

public class zad2 {
    public static void main(String[] args) {
        String input = "XII";
        System.out.println("Число: " + romanToInt(input));
    }

    public static int romanToInt(String s) {
        Map<Character, Integer> romanNums = new HashMap<>();
        romanNums.put('I', 1);
        romanNums.put('V', 5);
        romanNums.put('X', 10);
        romanNums.put('L', 50);
        romanNums.put('C', 100);
        romanNums.put('D', 500);
        romanNums.put('M', 1000);

        int result = romanNums.get(s.charAt(s.length() - 1)); // Получаем численное значение для последнего символа

        for (int i = s.length() - 2; i >= 0; i--) {
            if (romanNums.get(s.charAt(i)) < romanNums.get(s.charAt(i + 1))) {
                result -= romanNums.get(s.charAt(i)); // Если меньшая цифра перед большей, вычитаем ее значение
            } else {
                result += romanNums.get(s.charAt(i)); // Иначе складываем значения
            }
        }

        return result;
    }
}