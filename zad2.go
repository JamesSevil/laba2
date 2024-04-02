package main

import (
	"fmt"
)

func romanToInt(s string) int {
	romanNums := map[byte]int{'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}

	result := romanNums[s[len(s)-1]] // Получаем численное значение для последнего символа
	for i := len(s) - 2; i >= 0; i-- {
		if romanNums[s[i]] < romanNums[s[i+1]] {
			result -= romanNums[s[i]] // Если меньшая цифра перед большей, вычитаем ее значение
		} else {
			result += romanNums[s[i]] // Иначе складываем значения
		}
	}

	return result
}

func main() {
	input := "XII"
	fmt.Println("Число:", romanToInt(input))
}
