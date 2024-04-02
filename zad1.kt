import java.util.regex.Matcher
import java.util.regex.Pattern

fun main() {
    val str = "1001tf11flb10001" // строка
    val regular = Pattern.compile("1(0+)1") // условие поиска
    val matcher = regular.matcher(str) // результат

    while (matcher.find()) {
        println(matcher.group(0)) // возвращает первое совпадение с регулярным выражением
    }
}