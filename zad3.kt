import java.util.Scanner

fun sumOfDigits(num: Int): Int { // нахождение суммы цифр
    var sum = 0
    var number = num
    while (number != 0) {
        sum += number % 10
        number /= 10
    }
    return sum
}

fun main() {
    val scanner = Scanner(System.`in`)
    // ввод чисел
    var n: Int
    do {
        print("Введите кол-во чисел(Больше 0): ")
        n = scanner.nextInt()
    } while (n <= 0)

    val nums = DoubleArray(n)
    print("Введите числа: ")
    for (i in 0 until n) {
        nums[i] = scanner.nextDouble()
    }

    print("Числа: ")
    for (i in nums.indices) { // перебор
        if (sumOfDigits(nums[i].toInt()) < 10) { // проверка условия
            print("${nums[i]} ") // вывод подходящих
        }
    }
}