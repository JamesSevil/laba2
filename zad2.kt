import java.util.*

fun romanToInt(s: String): Int {
    val romanNums = mapOf('I' to 1, 'V' to 5, 'X' to 10, 'L' to 50, 'C' to 100, 'D' to 500, 'M' to 1000)
    var result = romanNums[s.last()] ?: 0 // Получаем численное значение для последнего символа

    for (i in s.length - 2 downTo 0) {
        if (romanNums[s[i]]!! < romanNums[s[i + 1]]!!) {
            result -= romanNums[s[i]]!! // Если меньшая цифра перед большей, вычитаем ее значение
        } else {
            result += romanNums[s[i]]!! // Иначе складываем значения
        }
    }

    return result
}

fun main() {
    val input = "XII"
    println("Число: ${romanToInt(input)}")
}