// регулярные выражения
#include <iostream>
#include <regex>

using namespace std;

int main() {
    
    string str = "1001tf11flb10001"; // строка
    regex regular("1(0+)1"); // условие поиска
    smatch result; // результат

    while (regex_search(str, result, regular)) {
        cout << result[0] << endl; // возвращает первое совпадение с регулярным выражением
        str = result.suffix().str(); // возвращает оставшуюся часть строки после последнего соответствия регулярному выражению
    }

    return 0;
}
