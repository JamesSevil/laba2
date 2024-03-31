#include <iostream>
#include <vector>

using namespace std;

int sum_of_digits(int num) { // нахождение суммы цифр числа
    int sum = 0;
    while (num != 0) {
        sum += num % 10;
        num /= 10;
    }
    return sum;
}

int main() {

    vector<int> nums = {19, 93, 44, 27}; // ввод чисел

    cout << "Числа: ";
    for (int i = 0; i < nums.size(); ++i) { // перебор каждого числа
        if (sum_of_digits(nums[i]) < 10) { // проверка условия
            cout << nums[i] << " "; // вывод подходящих чисел
        }
    }

    return 0;
}