use regex::Regex;

fn main() {
    let str = "1001tf11flb10001"; // строка
    let regular = Regex::new(r"1[0]+1").unwrap(); // условие поиска
    
    for mat in regular.find_iter(str) { // вывод найденных подстрок
        println!("{}", mat.as_str()); 
    }
}