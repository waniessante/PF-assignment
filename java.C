import java.util.Scanner;

public class PartC {

    public static String decimalToBinaryString(int num) {
        if (num == 0) {
            return "0";
        }

        String binary = "";

        while (num > 0) {
            binary = (num % 2) + binary;
            num /= 2;
        }

        return binary;
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter an integer: ");
        int num = input.nextInt();

        String result = decimalToBinaryString(num);

        System.out.println("Binary (String): " + result);

        input.close();
    }
}
