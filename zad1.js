const str = "1001tf11flb10001"; // строка
const regular = new RegExp("1(0+)1", "g"); // условие поиска
const result = str.match(regular); // результат

result.forEach(result => { // поиск совпадения
console.log(result); // вывод
});