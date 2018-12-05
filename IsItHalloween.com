import java.util.Scanner;

public class IsItHalloweenDOTcom {

    public static void main(String[] args) {

        String month;
        int day;

        Scanner scanner = new Scanner(System.in);

        month = scanner.next();
        day = scanner.nextInt();

        month = month.toUpperCase();

        if (month.equals("OCT") && day == 31){
            System.out.println("yup");
        }else if (month.equals("DEC")&& day == 25){
            System.out.println("yup");
        }else {
            System.out.println("nope");
        }

        scanner.close();
    }
}
