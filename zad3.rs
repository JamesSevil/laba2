use std::io;
use std::io::Write;

fn sum_of_digits(mut num: i32) -> i32 { // нахождение суммы цифр
    let mut sum = 0;
    while num != 0 {
        sum += num % 10;
        num /= 10;
    }
    sum
}

fn main() {
    // ввод чисел
    let mut n = String::new();
    loop {
        print!("Введите кол-во чисел (Больше 0): ");
        io::stdout().flush().unwrap();
        n.clear();
        io::stdin().read_line(&mut n).unwrap();
        let n: i32 = match n.trim().parse() {
            Ok(num) if num > 0 => num,
            _ => continue,
        };
        let mut nums = Vec::with_capacity(n as usize);
        print!("Введите числа: ");
        io::stdout().flush().unwrap();
        for _ in 0..n {
            let mut num = String::new();
            io::stdin().read_line(&mut num).unwrap();
            let num: f64 = num.trim().parse().unwrap();
            nums.push(num);
        }
        
        print!("Числа: ");
        for num in &nums { // перебор чисел
            if sum_of_digits(*num as i32) < 10 { // проверка условия
                print!("{} ", num); // ввод подходящих чисел
            }
        }
        break;
    }
}