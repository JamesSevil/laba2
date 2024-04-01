package main

import (
	"fmt"    // пакет для форматирования и вывода
	"regexp" // регулярное выражение
)

func main() {
	str := "1001tf11flb10001"                // строка
	regular := regexp.MustCompile("1(0+)1")  // условие поиска
	result := regular.FindAllString(str, -1) // результат
	for _, match := range result {
		fmt.Println(match) // возвращает совпадение с регулярным выражением
	}
}
