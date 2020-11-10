/*Create three classes
*Faculty with two data members facultyId and salary and two methods, one intput() method for accepting facultyId as input and 
another printSalary() to print salary.
*FullTimeFaculty that inherits class Faculty with two data members’ basicSalary and allowance. Override input() method in this 
class that calls super class inut() method and accepts basicSalary and allowance as input. Salary should not be accepted as input
but should be calculated using formula (basicSalary + allowance)
*PartTimeFaculty that inherits class Faculty with two data members’ workingHours, ratePerHour. Override input() method in this 
class that calls super class inut() method and accepts workingHours and ratePerHour as input. Salary should not be accepted as 
input but should be calculated using formula ( workingHour * ratePerHour )
*/
package Assignment3;
import java.util.Scanner;

class Faculty
{
    int facultyId;
    int salary;
    Scanner sc=new Scanner(System.in);
    void input()
    {
        System.out.println("Enter faculty id :");
        facultyId=sc.nextInt();
    }
    void printSalary()
    {
        System.out.println("Salary :"+salary);
    }
}
class FullTimeFaculty extends Faculty
{
    int basicSalary;
    int allowance;
    void input()
    {
        super.input();
        System.out.println("Enter basic salary :");
        basicSalary=sc.nextInt();
        System.out.println("Enter allowance :");
        allowance=sc.nextInt();
        salary=basicSalary+allowance;
        printSalary();
    }
   
}
class PartTimeFaculty extends Faculty
{
    int workingHour;
    int ratePerHour;
    void input()
    {
        super.input();
        System.out.println("Enter working hour :");
        workingHour=sc.nextInt();
        System.out.println("Enter rate per hour :");
        ratePerHour=sc.nextInt();
        salary=workingHour*ratePerHour;
        printSalary();
    }
    
}
public class FacultyDemo {
    public static void main(String args[])
    {
         FullTimeFaculty ft=new FullTimeFaculty();
         ft.input();
         PartTimeFaculty pt=new PartTimeFaculty();
         pt.input();
    }
}
