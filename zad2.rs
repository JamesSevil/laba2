use std::collections::HashMap;

fn roman_to_int(s: &str) -> i32 {
    let mut roman_nums = HashMap::new();
    roman_nums.insert('I', 1);
    roman_nums.insert('V', 5);
    roman_nums.insert('X', 10);
    roman_nums.insert('L', 50);
    roman_nums.insert('C', 100);
    roman_nums.insert('D', 500);
    roman_nums.insert('M', 1000);

    let mut result = *roman_nums.get(&s.chars().last().unwrap()).unwrap(); // Получаем численное значение для последнего символа

    for i in (0..s.len() - 1).rev() {
        if roman_nums[&s.chars().nth(i).unwrap()] < roman_nums[&s.chars().nth(i + 1).unwrap()] {
            result -= roman_nums[&s.chars().nth(i).unwrap()]; // Если меньшая цифра перед большей, вычитаем ее значение
        } else {
            result += roman_nums[&s.chars().nth(i).unwrap()]; // Иначе складываем значения
        }
    }

    result
}

fn main() {
    let input = "XII";
    println!("Число: {}", roman_to_int(input));
}