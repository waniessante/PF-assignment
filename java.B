import java.util.Scanner;

public class PartB {

    public static int[] decimalToBinaryArray(int num) {
        if (num == 0) {
            return new int[]{0};
        }

        int temp = num;
        int count = 0;

        while (temp > 0) {
            temp /= 2;
            count++;
        }

        int[] binary = new int[count];

        for (int i = count - 1; i >= 0; i--) {
            binary[i] = num % 2;
            num /= 2;
        }

        return binary;
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter an integer: ");
        int num = input.nextInt();

        int[] result = decimalToBinaryArray(num);

        System.out.print("Binary (Array): ");
        for (int bit : result) {
            System.out.print(bit);
        }

        input.close();
    }
}
