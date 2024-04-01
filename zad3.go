package main

import (
	"fmt" // пакет форматирования и ввода/вывода
)

func sumOfDigits(num int) int { // нахождение суммы цифр
	sum := 0
	for num != 0 {
		sum += num % 10
		num /= 10
	}
	return sum
}

func main() {
	nums := []int{19, 93, 44, 27} // ввод
	fmt.Print("Числа: ")
	for i := 0; i < len(nums); i++ { // перебор всех чисел
		if sumOfDigits(nums[i]) < 10 { // проверка условия
			fmt.Print(nums[i], " ") // вывод подходящих
		}
	}
}
