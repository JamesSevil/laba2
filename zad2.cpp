#include <iostream>
#include <map>

using namespace std;

int romanToInt(string s) {
    map<char, int> romanNums = { {'I', 1}, {'V', 5}, {'X', 10}, {'L', 50}, {'C', 100}, {'D', 500}, {'M', 1000} };
    
    int result = romanNums[s.back()];  // Получаем численное значение для последнего символа
    
    for (int i = s.length() - 2; i >= 0; i--) {
        if (romanNums[s[i]] < romanNums[s[i + 1]]) {
            result -= romanNums[s[i]];  // Если меньшая цифра перед большей, вычитаем ее значение
        } else {
            result += romanNums[s[i]];  // Иначе складываем значения
        }
    }
    
    return result;
}

int main() {
    string input = "XII";
    cout << "Число: " << romanToInt(input) << endl;
    
    return 0;
}