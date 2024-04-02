import Foundation

func sumOfDigits(_ num: Int) -> Int { // нахождение суммы цифр
    var sum = 0
    var number = num
    while number != 0 {
        sum += number % 10
        number /= 10
    }
    return sum
}

func main() {
    // ввод чисел
    var n = 0
    repeat {
        print("Введите кол-во чисел(Больше 0): ", terminator: "")
        if let input = readLine(), let inputInt = Int(input) {
            n = inputInt
        }
    } while n <= 0
    var nums = [Double]()
    print("Введите числа: ", terminator: "")
    for _ in 0..<n {
        if let input = readLine(), let inputDouble = Double(input) {
            nums.append(inputDouble)
        }
    }

    print("Числа: ", terminator: "")
    for num in nums { // перебор
        if sumOfDigits(Int(num)) < 10 { // проверка условия
            print("\(num) ", terminator: "") // вывод подходящих
        }
    }
}

main()