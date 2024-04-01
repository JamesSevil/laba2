fn sum_of_digits(mut num: i32) -> i32 { // нахождение суммы цифр
    let mut sum = 0;
    while num != 0 {
        sum += num % 10;
        num /= 10;
    }
    sum
}

fn main() {
    let nums = vec![19, 93, 44, 27]; // ввод чисел
    
    print!("Числа: ");
    for &num in &nums { // перебор каждого числа
        if sum_of_digits(num) < 10 { // проверка условия
            print!("{} ", num); // вывод подходящих чисел
        }
    }
}