import Foundation

func romanToInt(_ s: String) -> Int {
    let romanNums: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    var result = romanNums[s.last!] ?? 0 // Получаем численное значение для последнего символа
    
    for i in (0..<s.count-1).reversed() {
        if let currentNum = romanNums[s[s.index(s.startIndex, offsetBy: i)]], let nextNum = romanNums[s[s.index(s.startIndex, offsetBy: i+1)]] {
            if currentNum < nextNum {
                result -= currentNum // Если меньшая цифра перед большей, вычитаем ее значение
            } else {
                result += currentNum // Иначе складываем значения
            }
        }
    }
    
    return result
}

let input = "XII"
print("Число: \(romanToInt(input))")