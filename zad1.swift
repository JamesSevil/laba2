import Foundation

let str = "1001tf11flb10001" // строка
let regular = try! NSRegularExpression(pattern: "1(0+)1") // условие поиска
let range = NSRange(str.startIndex..<str.endIndex, in: str)

var results = [String]()
regular.enumerateMatches(in: str, options: [], range: range) { (match, _, _) in
    if let match = match {
        let matchedString = String(str[Range(match.range, in: str)!])
        results.append(matchedString)
    }
}

for result in results {
    print(result) // возвращает первое совпадение с регулярным выражением
}