function romanToInt(s) {
    const romanNums = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };
  
    let result = romanNums[s[s.length - 1]]; // Получаем численное значение для последнего символа
  
    for (let i = s.length - 2; i >= 0; i--) {
      if (romanNums[s[i]] < romanNums[s[i + 1]]) {
        result -= romanNums[s[i]]; // Если меньшая цифра перед большей, вычитаем ее значение
      } else {
        result += romanNums[s[i]]; // Иначе складываем значения
      }
    }
  
    return result;
  }
  
  const input = "XII";
  console.log("Число: " + romanToInt(input));