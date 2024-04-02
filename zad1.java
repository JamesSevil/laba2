import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class zad1 {
    public static void main(String[] args) {
        String str = "1001tf11flb10001"; // строка
        Pattern pattern = Pattern.compile("1(0+)1"); // условие поиска
        Matcher matcher = pattern.matcher(str); // результат

        while (matcher.find()) {
            System.out.println(matcher.group()); // возвращает первое совпадение с регулярным выражением
            str = str.substring(matcher.end()); // возвращает оставшуюся часть строки после последнего соответствия регулярному выражению
            matcher = pattern.matcher(str);
        }
    }
}