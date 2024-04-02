import java.util.Scanner;
import java.util.ArrayList;

public class zad3 {
    
    public static int sumOfDigits(Double double1) { // нахождение суммы цифр числа
        int sum = 0;
        while (double1 != 0) {
            sum += double1 % 10;
            double1 /= 10;
        }
        return sum;
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        // ввод чисел
        int n;
        do {
            System.out.print("Введите кол-во чисел(Больше 0): ");
            n = scanner.nextInt();
        } while (n <= 0);
        
        ArrayList<Double> nums = new ArrayList<>();
        System.out.print("Введите числа: ");
        for (int i = 0; i < n; ++i) {
            nums.add(scanner.nextDouble());
        }
        
        System.out.print("Числа: ");
        for (int i = 0; i < nums.size(); ++i) { // перебор каждого числа
            if (sumOfDigits(nums.get(i)) < 10) { // проверка условия
                System.out.print(nums.get(i) + " "); // вывод подходящих чисел
            }
        }
        
        scanner.close();
    }
}