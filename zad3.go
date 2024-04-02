package main

import (
	"fmt"
)

func sumOfDigits(num int) int { // нахождение суммы цифр числа
	sum := 0
	for num != 0 {
		sum += num % 10
		num /= 10
	}
	return sum
}

func main() {
	// ввод чисел
	var n int
	for {
		fmt.Print("Введите кол-во чисел (Больше 0): ")
		fmt.Scan(&n)
		if n > 0 {
			break
		}
	}

	nums := make([]int, n)
	fmt.Print("Введите числа: ")
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
	}

	fmt.Print("Числа: ")
	for i := 0; i < len(nums); i++ { // перебор каждого числа
		if sumOfDigits(nums[i]) < 10 { // проверка условия
			fmt.Print(nums[i], " ") // вывод подходящих чисел
		}
	}
}
