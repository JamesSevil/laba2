function sum_of_digits(num) { // нахождение суммы цифр
    let sum = 0;
    while (num !== 0) {
      sum += num % 10;
      num = Math.floor(num / 10);
    }
    return sum;
  }
  
  function main() {
    const readline = require('readline');
    const rl = readline.createInterface({
      input: process.stdin,
      output: process.stdout
    });
    // ввод чисел
    rl.question("Введите кол-во чисел(Больше 0): ", function(n) {
      n = parseInt(n);
      if (n <= 0) {
        console.log("Число должно быть больше 0.");
        rl.close();
        return;
      }
      let nums = [];
      rl.question("Введите числа: ", function(input) {
        nums = input.split(' ').map(Number);
  
        console.log("Числа: ");
        for (let i = 0; i < nums.length; ++i) { // перебор чисел
          if (sum_of_digits(nums[i]) < 10) { // проверка условия
            process.stdout.write(nums[i] + " "); // вывод подходящих
          }
        }
  
        rl.close();
      });
    });
  }
  
  main();