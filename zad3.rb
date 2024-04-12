require 'io/console'

def sum_of_digits(num)
  sum = 0
  while num != 0
    sum += num % 10
    num /= 10
  end
  sum
end

def main
  n = 0
  loop do
    print "Введите кол-во чисел(Больше 0): "
    n = $stdin.gets.chomp.to_i
    break if n > 0
  end

  nums = []
  print "Введите числа: "
  n.times do
    nums << $stdin.gets.chomp.to_i
  end

  print "Числа: "
  nums.each do |num|
    if sum_of_digits(num) < 10
      print "#{num} "
    end
  end
end

main